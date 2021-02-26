#include <iostream>
#include <cstdlib>
#include <eigen3/Eigen/Dense>
using namespace Eigen;
using namespace std;
int main()
{
    // 1. GENERATE N RANDOM POINT CLOUDS
    int N=12; // No. of points - Must be even for the scatter matrix to be decomposed later
    srand((unsigned) time(NULL));
    MatrixX3f point=MatrixX3f::Random(N,3);
    std::cout<<"Points"<<endl<<point<<endl;

    // 1. GENERATE N RANDOM POINT CLOUDS - Classical approach (Aternative)
    /*int N=5;
    int random[N][3];
    float point[N][3];
    srand((unsigned) time(NULL));
    cout<<"Generating "<<N<<" random points."<<endl;
    for (int i = 0; i < N; i++) 
    {
        cout<<"Point"<<i+1<<endl;
        for (int j=0; j< 3 ; j++)
        {
            random[i][j] = rand();
            point[i][j]=(float) random[i][j]/RAND_MAX;
            cout<<point[i][j]<<" ";
        }
        cout<<endl;
    }*/


    // 2. FIND MEAN OF THE POINTS
    Vector3f mean=point.colwise().mean();
    std::cout<<endl<<"Mean"<<endl<<mean.transpose()<<endl;


    // 2. FIND MEAN OF THE POINTS- Classical approach (Alternative)
    /*
    float mean[3];
    float sum[3];
    cout<<endl;
    for (int k=0;k<3;k++)
    {
        sum[k]=0;
        for (int i=0;i<N;i++)
        {
            sum[k]=sum[k]+point[i][k];
        }
        mean[k]=sum[k]/N;
        cout<<"Sum"<<k<<" "<<sum[k]<<endl;  
        cout<<"Mean"<<k<<" "<<mean[k]<<endl; 
        cout<<endl;
    }*/

    // 3. COMPUTE SCATTER MATRIX
    MatrixX3f y=point.rowwise()-mean.transpose();
    std::cout<<endl<<"y"<<endl<<y<<endl;
    Matrix3Xf yT=y.transpose();
    std::cout<<endl<<"yT"<<endl<<yT<<endl;
    MatrixXf S=y*yT;
    std::cout<<endl<<"S=y*yT"<<endl<<S<<endl;

    // 4. COMPUTER EIGEN VALUES OF SCATTER MATRIX
   cout << "Here is the matrix S:\n" << S << endl;
   SelfAdjointEigenSolver<MatrixXf> eigensolver(S);
   if (eigensolver.info() != Success) abort();
   std::cout<<"The eigenvalues of S :"<<endl<<eigensolver.eigenvalues()<< endl;
   MatrixXf eigenvectors;
   eigenvectors=eigensolver.eigenvectors();
   std::cout<<"Matrix whose columns are eigenvectors of S"<<endl<<"corresponding to the eigenvalues above"<<endl<<eigenvectors<<endl;

    // 5. AXES OF THE BOUNDING BOX DEFINED BY THE EIGENVECTORS
   cout << endl <<"axes vectors represented as columns:" << endl << eigenvectors(seq(N-3,N-1),seq(N-3,N-1)) << "\n";
   std::cout<<endl<<"Origin of the axes"<<endl<<mean.transpose()<<endl;

   // 6. DEFINE THE BOUNDING BOX SIZE
   Vector3f size=point.colwise().maxCoeff();
   std::cout<<endl<<"Size of the box"<<endl<<size.transpose()<<endl;
   return 0;
}




