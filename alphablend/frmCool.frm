VERSION 5.00
Begin VB.Form frmCool 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   " http://www.i.com.ua/~aka"
   ClientHeight    =   3585
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7020
   Icon            =   "frmCool.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmCool.frx":030A
   ScaleHeight     =   3585
   ScaleWidth      =   7020
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox picSrc 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   4770
      Left            =   120
      Picture         =   "frmCool.frx":36C0
      ScaleHeight     =   314
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   450
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   4440
      Visible         =   0   'False
      Width           =   6810
   End
End
Attribute VB_Name = "frmCool"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

 Option Explicit
 '*************************************
 'Copyright © 2001 by Alexander Anikin
 '& DREAM Interactive - QQQ
 'e-mail: aka@i.com.ua
 'For more my code samples visit:
 'http://www.i.com.ua/~aka
 '*************************************
 Private Declare Function AlphaBlend _
  Lib "msimg32" ( _
  ByVal hDestDC As Long, _
  ByVal x As Long, ByVal y As Long, _
  ByVal nWidth As Long, _
  ByVal nHeight As Long, _
  ByVal hSrcDC As Long, _
  ByVal xSrc As Long, _
  ByVal ySrc As Long, _
  ByVal widthSrc As Long, _
  ByVal heightSrc As Long, _
  ByVal dreamAKA As Long) _
  As Boolean 'only Windows 98 or Latter
 Dim Num As Byte, nN%, nBlend&
 
Private Sub Run_Blending()
 Num = 255
 nN = 5
Do
 DoEvents
 '***********************************************
  nBlend = vbBlue - CLng(Num) * (vbYellow + 1)
 'It's Magic Formula is
 'Alchemical Mixture of Elements of Gold & Sky
 'It's obtained by an almost mystical way
 '***********************************************
 Num = Num - nN
 If Num = 0 Then
   nN = -5
 ElseIf Num = 255 Then
   nN = 5
 End If
 Me.Cls
 AlphaBlend Me.hDC, 0, 0, picSrc.ScaleWidth, picSrc.ScaleHeight, picSrc.hDC, 0, 0, picSrc.ScaleWidth, picSrc.ScaleHeight, nBlend
Loop
End Sub


Private Sub Form_Activate()
 Call Run_Blending
End Sub

Private Sub Form_Unload(Cancel As Integer)
 End ' STOP Do Loop
End Sub
