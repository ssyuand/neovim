Vim�UnDo� ���<%��Y :a�ְ+��+L0�ц
�� $   ]           final int LENGT = 510;   S                          b��V    _�                             ����                                                                                                                                                                                                                                                                                                                                                             b��     �               ]   import java.io.*;   import java.nio.FloatBuffer;       class RawImgViewerTest {   -    public static void main(String... args) {   #        FileInputStream fis = null;           try {   .            File srcFile = new File("./lena");   /            fis = new FileInputStream(srcFile);   0            byte[] buffer = new byte[512 * 512];   3            TestFileInputStream(fis, buffer); // Q1   )            MirrorImage(buffer); // Q2...               rotate180(buffer);               rotate270(buffer);               negative(buffer);               blur(buffer);   !        } catch (IOException e) {                e.printStackTrace();           } finally {               try {                   fis.close();   %            } catch (IOException e) {               }       	        }       }       N    public static void TestFileInputStream(FileInputStream fis, byte[] temp) {           try {   ,            while ((fis.read(temp)) != -1) {               }   !        } catch (IOException e) {   	        }   '        new RawImgViewer("test", temp);       }       1    public static void MirrorImage(byte[] temp) {           final int LENGTH = 512;   2        byte[] buffer = new byte[LENGTH * LENGTH];   ;        for (int j = 0; j < LENGTH * LENGTH; j += LENGTH) {   .            for (int i = 0; i < LENGTH; i++) {   9                buffer[LENGTH - i + j - 1] = temp[i + j];               }   	        }   0        new RawImgViewer("MirrorImage", buffer);       }       3    // TestFileInputOutputStream(fis, fos, buffer);   /    public static void rotate180(byte[] temp) {           final int LENGTH = 512;   2        byte[] buffer = new byte[LENGTH * LENGTH];   *        for (int j = 0; j < LENGTH; j++) {   ?            for (int i = 0; i < LENGTH * LENGTH; i += LENGTH) {   G                buffer[LENGTH * LENGTH - LENGTH - i + j] = temp[i + j];               }   	        }   .        new RawImgViewer("rotate180", buffer);       }       /    public static void rotate270(byte[] temp) {           final int LENGTH = 512;   2        byte[] buffer = new byte[LENGTH * LENGTH];   *        for (int j = 0; j < LENGTH; j++) {   .            for (int i = 1; i < LENGTH; i++) {   G                buffer[j + i * LENGTH] = temp[LENGTH - i + LENGTH * j];               }   	        }   .        new RawImgViewer("rotate270", buffer);       }       .    public static void negative(byte[] temp) {           final int LENGTH = 512;   2        byte[] buffer = new byte[LENGTH * LENGTH];   ;        for (int j = 0; j < LENGTH * LENGTH; j += LENGTH) {   .            for (int i = 0; i < LENGTH; i++) {   >                buffer[j + i] = (byte) (LENGTH - temp[j + i]);               }   	        }   -        new RawImgViewer("negative", buffer);       }       *    public static void blur(byte[] temp) {           final int LENGT = 510;   2        byte[] buffer = new byte[LENGTH * LENGTH];   5        for (int i = 513; i < LENGTH * LENGTH; i++) {   k            buffer[i] = (byte) (((temp[i - 513] & 0xFF) + (temp[i - 512] & 0xFF) + (temp[i - 511] & 0xFF) +   T                    (temp[i - 1] & 0xFF) + (temp[i] & 0xFF) + (temp[i + 1] & 0xFF) +   _                    (temp[i + 511] & 0xFF) + (temp[i + 512] & 0xFF) + (temp[i + 513] & 0xFF)) /                       9);   	        }   )        new RawImgViewer("blur", buffer);       }   }5�5�_�                     S       ����                                                                                                                                                                                                                                                                                                                                                             b��U    �   R   T   ]              final int LENGT = 510;5��    R                     ,
                     5��