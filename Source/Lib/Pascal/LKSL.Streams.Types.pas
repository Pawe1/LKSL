{
  LaKraven Studios Standard Library [LKSL]
  Copyright (c) 2014-2016, Simon J Stuart, All Rights Reserved

  Original Source Location: https://github.com/LaKraven/LKSL

  License:
    - You may use this library as you see fit, including use within commercial applications.
    - You may modify this library to suit your needs, without the requirement of distributing
      modified versions.
    - You may redistribute this library (in part or whole) individually, or as part of any
      other works.
    - You must NOT charge a fee for the distribution of this library (compiled or in its
      source form). It MUST be distributed freely.
    - This license and the surrounding comment block MUST remain in place on all copies and
      modified versions of this source code.
    - Modified versions of this source MUST be clearly marked, including the name of the
      person(s) and/or organization(s) responsible for the changes, and a SEPARATE "changelog"
      detailing all additions/deletions/modifications made.

  Disclaimer:
    - Your use of this source constitutes your understanding and acceptance of this
      disclaimer.
    - Simon J Stuart and its employees (including but not limited to directors,
      programmers and clerical staff) cannot be held liable for your use of this source
      code. This includes any losses and/or damages resulting from your use of this source
      code, be they physical, financial, or psychological.
    - There is no warranty or guarantee (implicit or otherwise) provided with this source
      code. It is provided on an "AS-IS" basis.

  Donations:
    - While not mandatory, contributions are always appreciated. They help keep the coffee
      flowing during the long hours invested in this and all other Open Source projects we
      produce.
    - Donations can be made via PayPal to PayPal [at] LaKraven (dot) Com
                                          ^  Garbled to prevent spam!  ^
}
unit LKSL.Streams.Types;

{$I LKSL.inc}

interface

{
  About this unit:
    - This unit provides a series of methods to Delete, Insert, Read and Write values to/from Streams
    - The Types covered are those defined in "System.Types.pas"
}

uses
  {$IFDEF LKSL_USE_EXPLICIT_UNIT_NAMES}
    System.Classes, System.SysUtils, System.Types,
  {$ELSE}
    Classes, SysUtils, Types,
  {$ENDIF LKSL_USE_EXPLICIT_UNIT_NAMES}
  LKSL.Streams.Main;

  {$I LKSL_RTTI.inc}

// Delete Methods
procedure StreamDeleteTPoint(const AStream: TStream); overload;
procedure StreamDeleteTPoint(const AStream: TStream; const APosition: Int64); overload;
procedure StreamDeleteTRect(const AStream: TStream); overload;
procedure StreamDeleteTRect(const AStream: TStream; const APosition: Int64); overload;
procedure StreamDeleteTSize(const AStream: TStream); overload;
procedure StreamDeleteTSize(const AStream: TStream; const APosition: Int64); overload;
procedure StreamDeleteTSmallPoint(const AStream: TStream); overload;
procedure StreamDeleteTSmallPoint(const AStream: TStream; const APosition: Int64); overload;
// Insert Methods
procedure StreamInsertTPoint(const AStream: TStream; const AValue: TPoint); overload;
procedure StreamInsertTPoint(const AStream: TStream; const AValue: TPoint; const APosition: Int64); overload;
procedure StreamInsertTRect(const AStream: TStream; const AValue: TRect); overload;
procedure StreamInsertTRect(const AStream: TStream; const AValue: TRect; const APosition: Int64); overload;
procedure StreamInsertTSize(const AStream: TStream; const AValue: TSize); overload;
procedure StreamInsertTSize(const AStream: TStream; const AValue: TSize; const APosition: Int64); overload;
procedure StreamInsertTSmallPoint(const AStream: TStream; const AValue: TSmallPoint); overload;
procedure StreamInsertTSmallPoint(const AStream: TStream; const AValue: TSmallPoint; const APosition: Int64); overload;
// Read Methods
function StreamReadTPoint(const AStream: TStream): TPoint; overload;
function StreamReadTPoint(const AStream: TStream; const APosition: Int64): TPoint; overload;
function StreamReadTRect(const AStream: TStream): TRect; overload;
function StreamReadTRect(const AStream: TStream; const APosition: Int64): TRect; overload;
function StreamReadTSize(const AStream: TStream): TSize; overload;
function StreamReadTSize(const AStream: TStream; const APosition: Int64): TSize; overload;
function StreamReadTSmallPoint(const AStream: TStream): TSmallPoint; overload;
function StreamReadTSmallPoint(const AStream: TStream; const APosition: Int64): TSmallPoint; overload;
// Write Methods
procedure StreamWriteTPoint(const AStream: TStream; const AValue: TPoint); overload;
procedure StreamWriteTPoint(const AStream: TStream; const AValue: TPoint; const APosition: Int64); overload;
procedure StreamWriteTRect(const AStream: TStream; const AValue: TRect); overload;
procedure StreamWriteTRect(const AStream: TStream; const AValue: TRect; const APosition: Int64); overload;
procedure StreamWriteTSize(const AStream: TStream; const AValue: TSize); overload;
procedure StreamWriteTSize(const AStream: TStream; const AValue: TSize; const APosition: Int64); overload;
procedure StreamWriteTSmallPoint(const AStream: TStream; const AValue: TSmallPoint); overload;
procedure StreamWriteTSmallPoint(const AStream: TStream; const AValue: TSmallPoint; const APosition: Int64); overload;
{$IFDEF SUPPORTS_FIREMONKEY}
  // Delete Methods
  procedure StreamDeleteTPointF(const AStream: TStream); overload;
  procedure StreamDeleteTPointF(const AStream: TStream; const APosition: Int64); overload;
  procedure StreamDeleteTRectF(const AStream: TStream); overload;
  procedure StreamDeleteTRectF(const AStream: TStream; const APosition: Int64); overload;
  procedure StreamDeleteTSizeF(const AStream: TStream); overload;
  procedure StreamDeleteTSizeF(const AStream: TStream; const APosition: Int64); overload;
  // Insert Methods
  procedure StreamInsertTPointF(const AStream: TStream; const AValue: TPointF); overload;
  procedure StreamInsertTPointF(const AStream: TStream; const AValue: TPointF; const APosition: Int64); overload;
  procedure StreamInsertTRectF(const AStream: TStream; const AValue: TRectF); overload;
  procedure StreamInsertTRectF(const AStream: TStream; const AValue: TRectF; const APosition: Int64); overload;
  procedure StreamInsertTSizeF(const AStream: TStream; const AValue: TSizeF); overload;
  procedure StreamInsertTSizeF(const AStream: TStream; const AValue: TSizeF; const APosition: Int64); overload;
  // Read Methods
  function StreamReadTPointF(const AStream: TStream): TPointF; overload;
  function StreamReadTPointF(const AStream: TStream; const APosition: Int64): TPointF; overload;
  function StreamReadTRectF(const AStream: TStream): TRectF; overload;
  function StreamReadTRectF(const AStream: TStream; const APosition: Int64): TRectF; overload;
  function StreamReadTSizeF(const AStream: TStream): TSizeF; overload;
  function StreamReadTSizeF(const AStream: TStream; const APosition: Int64): TSizeF; overload;
  // Write Methods
  procedure StreamWriteTPointF(const AStream: TStream; const AValue: TPointF); overload;
  procedure StreamWriteTPointF(const AStream: TStream; const AValue: TPointF; const APosition: Int64); overload;
  procedure StreamWriteTRectF(const AStream: TStream; const AValue: TRectF); overload;
  procedure StreamWriteTRectF(const AStream: TStream; const AValue: TRectF; const APosition: Int64); overload;
  procedure StreamWriteTSizeF(const AStream: TStream; const AValue: TSizeF); overload;
  procedure StreamWriteTSizeF(const AStream: TStream; const AValue: TSizeF; const APosition: Int64); overload;
{$ENDIF SUPPORTS_FIREMONKEY}

// Delete Methods
procedure StreamDeleteTPoint(const ACaret: ILKStreamCaret); overload;
procedure StreamDeleteTPoint(const ACaret: ILKStreamCaret; const APosition: Int64); overload;
procedure StreamDeleteTRect(const ACaret: ILKStreamCaret); overload;
procedure StreamDeleteTRect(const ACaret: ILKStreamCaret; const APosition: Int64); overload;
procedure StreamDeleteTSize(const ACaret: ILKStreamCaret); overload;
procedure StreamDeleteTSize(const ACaret: ILKStreamCaret; const APosition: Int64); overload;
procedure StreamDeleteTSmallPoint(const ACaret: ILKStreamCaret); overload;
procedure StreamDeleteTSmallPoint(const ACaret: ILKStreamCaret; const APosition: Int64); overload;
// Insert Methods
procedure StreamInsertTPoint(const ACaret: ILKStreamCaret; const AValue: TPoint); overload;
procedure StreamInsertTPoint(const ACaret: ILKStreamCaret; const AValue: TPoint; const APosition: Int64); overload;
procedure StreamInsertTRect(const ACaret: ILKStreamCaret; const AValue: TRect); overload;
procedure StreamInsertTRect(const ACaret: ILKStreamCaret; const AValue: TRect; const APosition: Int64); overload;
procedure StreamInsertTSize(const ACaret: ILKStreamCaret; const AValue: TSize); overload;
procedure StreamInsertTSize(const ACaret: ILKStreamCaret; const AValue: TSize; const APosition: Int64); overload;
procedure StreamInsertTSmallPoint(const ACaret: ILKStreamCaret; const AValue: TSmallPoint); overload;
procedure StreamInsertTSmallPoint(const ACaret: ILKStreamCaret; const AValue: TSmallPoint; const APosition: Int64); overload;
// Read Methods
function StreamReadTPoint(const ACaret: ILKStreamCaret): TPoint; overload;
function StreamReadTPoint(const ACaret: ILKStreamCaret; const APosition: Int64): TPoint; overload;
function StreamReadTRect(const ACaret: ILKStreamCaret): TRect; overload;
function StreamReadTRect(const ACaret: ILKStreamCaret; const APosition: Int64): TRect; overload;
function StreamReadTSize(const ACaret: ILKStreamCaret): TSize; overload;
function StreamReadTSize(const ACaret: ILKStreamCaret; const APosition: Int64): TSize; overload;
function StreamReadTSmallPoint(const ACaret: ILKStreamCaret): TSmallPoint; overload;
function StreamReadTSmallPoint(const ACaret: ILKStreamCaret; const APosition: Int64): TSmallPoint; overload;
// Write Methods
procedure StreamWriteTPoint(const ACaret: ILKStreamCaret; const AValue: TPoint); overload;
procedure StreamWriteTPoint(const ACaret: ILKStreamCaret; const AValue: TPoint; const APosition: Int64); overload;
procedure StreamWriteTRect(const ACaret: ILKStreamCaret; const AValue: TRect); overload;
procedure StreamWriteTRect(const ACaret: ILKStreamCaret; const AValue: TRect; const APosition: Int64); overload;
procedure StreamWriteTSize(const ACaret: ILKStreamCaret; const AValue: TSize); overload;
procedure StreamWriteTSize(const ACaret: ILKStreamCaret; const AValue: TSize; const APosition: Int64); overload;
procedure StreamWriteTSmallPoint(const ACaret: ILKStreamCaret; const AValue: TSmallPoint); overload;
procedure StreamWriteTSmallPoint(const ACaret: ILKStreamCaret; const AValue: TSmallPoint; const APosition: Int64); overload;
{$IFDEF SUPPORTS_FIREMONKEY}
  // Delete Methods
  procedure StreamDeleteTPointF(const ACaret: ILKStreamCaret); overload;
  procedure StreamDeleteTPointF(const ACaret: ILKStreamCaret; const APosition: Int64); overload;
  procedure StreamDeleteTRectF(const ACaret: ILKStreamCaret); overload;
  procedure StreamDeleteTRectF(const ACaret: ILKStreamCaret; const APosition: Int64); overload;
  procedure StreamDeleteTSizeF(const ACaret: ILKStreamCaret); overload;
  procedure StreamDeleteTSizeF(const ACaret: ILKStreamCaret; const APosition: Int64); overload;
  // Insert Methods
  procedure StreamInsertTPointF(const ACaret: ILKStreamCaret; const AValue: TPointF); overload;
  procedure StreamInsertTPointF(const ACaret: ILKStreamCaret; const AValue: TPointF; const APosition: Int64); overload;
  procedure StreamInsertTRectF(const ACaret: ILKStreamCaret; const AValue: TRectF); overload;
  procedure StreamInsertTRectF(const ACaret: ILKStreamCaret; const AValue: TRectF; const APosition: Int64); overload;
  procedure StreamInsertTSizeF(const ACaret: ILKStreamCaret; const AValue: TSizeF); overload;
  procedure StreamInsertTSizeF(const ACaret: ILKStreamCaret; const AValue: TSizeF; const APosition: Int64); overload;
  // Read Methods
  function StreamReadTPointF(const ACaret: ILKStreamCaret): TPointF; overload;
  function StreamReadTPointF(const ACaret: ILKStreamCaret; const APosition: Int64): TPointF; overload;
  function StreamReadTRectF(const ACaret: ILKStreamCaret): TRectF; overload;
  function StreamReadTRectF(const ACaret: ILKStreamCaret; const APosition: Int64): TRectF; overload;
  function StreamReadTSizeF(const ACaret: ILKStreamCaret): TSizeF; overload;
  function StreamReadTSizeF(const ACaret: ILKStreamCaret; const APosition: Int64): TSizeF; overload;
  // Write Methods
  procedure StreamWriteTPointF(const ACaret: ILKStreamCaret; const AValue: TPointF); overload;
  procedure StreamWriteTPointF(const ACaret: ILKStreamCaret; const AValue: TPointF; const APosition: Int64); overload;
  procedure StreamWriteTRectF(const ACaret: ILKStreamCaret; const AValue: TRectF); overload;
  procedure StreamWriteTRectF(const ACaret: ILKStreamCaret; const AValue: TRectF; const APosition: Int64); overload;
  procedure StreamWriteTSizeF(const ACaret: ILKStreamCaret; const AValue: TSizeF); overload;
  procedure StreamWriteTSizeF(const ACaret: ILKStreamCaret; const AValue: TSizeF; const APosition: Int64); overload;
{$ENDIF SUPPORTS_FIREMONKEY}

implementation

uses
  LKSL.Streams.System;

// Delete Methods

procedure StreamDeleteTPoint(const AStream: TStream);
begin
  StreamDeleteTPoint(AStream, AStream.Position);
end;

procedure StreamDeleteTPoint(const AStream: TStream; const APosition: Int64);
begin
  StreamClearSpace(AStream, APosition, SizeOf(TPoint));
end;

procedure StreamDeleteTRect(const AStream: TStream);
begin
  StreamDeleteTRect(AStream, AStream.Position);
end;

procedure StreamDeleteTRect(const AStream: TStream; const APosition: Int64);
begin
  StreamClearSpace(AStream, APosition, SizeOf(TRect));
end;

procedure StreamDeleteTSize(const AStream: TStream);
begin
  StreamDeleteTSize(AStream, AStream.Position);
end;

procedure StreamDeleteTSize(const AStream: TStream; const APosition: Int64);
begin
  StreamClearSpace(AStream, APosition, SizeOf(TSize));
end;

procedure StreamDeleteTSmallPoint(const AStream: TStream);
begin
  StreamDeleteTSmallPoint(AStream, AStream.Position);
end;

procedure StreamDeleteTSmallPoint(const AStream: TStream; const APosition: Int64);
begin
  StreamClearSpace(AStream, APosition, SizeOf(TSmallPoint));
end;

// Insert Methods

procedure StreamInsertTPoint(const AStream: TStream; const AValue: TPoint);
begin
  StreamInsertTPoint(AStream, AValue, AStream.Position);
end;

procedure StreamInsertTPoint(const AStream: TStream; const AValue: TPoint; const APosition: Int64);
begin
  StreamMakeSpace(AStream, APosition, SizeOf(AValue));
  AStream.Write(AValue, SizeOf(AValue));
end;

procedure StreamInsertTRect(const AStream: TStream; const AValue: TRect);
begin
  StreamInsertTRect(AStream, AValue, AStream.Position);
end;

procedure StreamInsertTRect(const AStream: TStream; const AValue: TRect; const APosition: Int64);
begin
  StreamMakeSpace(AStream, APosition, SizeOf(AValue));
  AStream.Write(AValue, SizeOf(AValue));
end;

procedure StreamInsertTSize(const AStream: TStream; const AValue: TSize);
begin
  StreamInsertTSize(AStream, AValue, AStream.Position);
end;

procedure StreamInsertTSize(const AStream: TStream; const AValue: TSize; const APosition: Int64);
begin
  StreamMakeSpace(AStream, APosition, SizeOf(AValue));
  AStream.Write(AValue, SizeOf(AValue));
end;

procedure StreamInsertTSmallPoint(const AStream: TStream; const AValue: TSmallPoint);
begin
  StreamInsertTSmallPoint(AStream, AValue, AStream.Position);
end;

procedure StreamInsertTSmallPoint(const AStream: TStream; const AValue: TSmallPoint; const APosition: Int64);
begin
  StreamMakeSpace(AStream, APosition, SizeOf(AValue));
  AStream.Write(AValue, SizeOf(AValue));
end;

// Read Methods

function StreamReadTPoint(const AStream: TStream): TPoint;
begin
  Result := StreamReadTPoint(AStream, AStream.Position);
end;

function StreamReadTPoint(const AStream: TStream; const APosition: Int64): TPoint;
begin
  AStream.Position := APosition;
  AStream.Read(Result, SizeOf(Result));
end;

function StreamReadTRect(const AStream: TStream): TRect;
begin
  Result := StreamReadTRect(AStream, AStream.Position);
end;

function StreamReadTRect(const AStream: TStream; const APosition: Int64): TRect;
begin
  AStream.Position := APosition;
  AStream.Read(Result, SizeOf(Result));
end;

function StreamReadTSize(const AStream: TStream): TSize;
begin
  Result := StreamReadTSize(AStream, AStream.Position);
end;

function StreamReadTSize(const AStream: TStream; const APosition: Int64): TSize;
begin
  AStream.Position := APosition;
  AStream.Read(Result, SizeOf(Result));
end;

function StreamReadTSmallPoint(const AStream: TStream): TSmallPoint;
begin
  Result := StreamReadTSmallPoint(AStream, AStream.Position);
end;

function StreamReadTSmallPoint(const AStream: TStream; const APosition: Int64): TSmallPoint;
begin
  AStream.Position := APosition;
  AStream.Read(Result, SizeOf(Result));
end;

// Write Methods

procedure StreamWriteTPoint(const AStream: TStream; const AValue: TPoint);
begin
  StreamWriteTPoint(AStream, AValue, AStream.Size);
end;

procedure StreamWriteTPoint(const AStream: TStream; const AValue: TPoint; const APosition: Int64);
begin
  AStream.Position := APosition;
  AStream.Write(AValue, SizeOf(AValue));
end;

procedure StreamWriteTRect(const AStream: TStream; const AValue: TRect);
begin
  StreamWriteTRect(AStream, AValue, AStream.Size);
end;

procedure StreamWriteTRect(const AStream: TStream; const AValue: TRect; const APosition: Int64);
begin
  AStream.Position := APosition;
  AStream.Write(AValue, SizeOf(AValue));
end;

procedure StreamWriteTSize(const AStream: TStream; const AValue: TSize);
begin
  StreamWriteTSize(AStream, AValue, AStream.Size);
end;

procedure StreamWriteTSize(const AStream: TStream; const AValue: TSize; const APosition: Int64);
begin
  AStream.Position := APosition;
  AStream.Write(AValue, SizeOf(AValue));
end;

procedure StreamWriteTSmallPoint(const AStream: TStream; const AValue: TSmallPoint);
begin
  StreamWriteTSmallPoint(AStream, AValue, AStream.Size);
end;

procedure StreamWriteTSmallPoint(const AStream: TStream; const AValue: TSmallPoint; const APosition: Int64);
begin
  AStream.Position := APosition;
  AStream.Write(AValue, SizeOf(AValue));
end;

{$IFDEF SUPPORTS_FIREMONKEY}
  procedure StreamDeleteTPointF(const AStream: TStream);
  begin
    StreamDeleteTPointF(AStream, AStream.Position);
  end;

  procedure StreamDeleteTPointF(const AStream: TStream; const APosition: Int64);
  begin
    StreamClearSpace(AStream, APosition, SizeOf(TPointF));
  end;

  procedure StreamDeleteTRectF(const AStream: TStream);
  begin
    StreamDeleteTRectF(AStream, AStream.Position);
  end;

  procedure StreamDeleteTRectF(const AStream: TStream; const APosition: Int64);
  begin
    StreamClearSpace(AStream, APosition, SizeOf(TRectF));
  end;

  procedure StreamDeleteTSizeF(const AStream: TStream);
  begin
    StreamDeleteTSizeF(AStream, AStream.Position);
  end;

  procedure StreamDeleteTSizeF(const AStream: TStream; const APosition: Int64);
  begin
    StreamClearSpace(AStream, APosition, SizeOf(TSizeF));
  end;

  procedure StreamInsertTPointF(const AStream: TStream; const AValue: TPointF);
  begin
    StreamInsertTPointF(AStream, AValue, AStream.Position);
  end;

  procedure StreamInsertTPointF(const AStream: TStream; const AValue: TPointF; const APosition: Int64);
  begin
    StreamMakeSpace(AStream, APosition, SizeOf(AValue));
    AStream.Write(AValue, SizeOf(AValue));
  end;

  procedure StreamInsertTRectF(const AStream: TStream; const AValue: TRectF);
  begin
    StreamInsertTRectF(AStream, AValue, AStream.Position);
  end;

  procedure StreamInsertTRectF(const AStream: TStream; const AValue: TRectF; const APosition: Int64);
  begin
    StreamMakeSpace(AStream, APosition, SizeOf(AValue));
    AStream.Write(AValue, SizeOf(AValue));
  end;

  procedure StreamInsertTSizeF(const AStream: TStream; const AValue: TSizeF);
  begin
    StreamInsertTSizeF(AStream, AValue, AStream.Position);
  end;

  procedure StreamInsertTSizeF(const AStream: TStream; const AValue: TSizeF; const APosition: Int64);
  begin
    StreamMakeSpace(AStream, APosition, SizeOf(AValue));
    AStream.Write(AValue, SizeOf(AValue));
  end;

  function StreamReadTPointF(const AStream: TStream): TPointF;
  begin
    Result := StreamReadTPointF(AStream, AStream.Position);
  end;

  function StreamReadTPointF(const AStream: TStream; const APosition: Int64): TPointF;
  begin
    AStream.Position := APosition;
    AStream.Read(Result, SizeOf(Result));
  end;

  function StreamReadTRectF(const AStream: TStream): TRectF;
  begin
    Result := StreamReadTRectF(AStream, AStream.Position);
  end;

  function StreamReadTRectF(const AStream: TStream; const APosition: Int64): TRectF;
  begin
    AStream.Position := APosition;
    AStream.Read(Result, SizeOf(Result));
  end;

  function StreamReadTSizeF(const AStream: TStream): TSizeF;
  begin
    Result := StreamReadTSizeF(AStream, AStream.Position);
  end;

  function StreamReadTSizeF(const AStream: TStream; const APosition: Int64): TSizeF;
  begin
    AStream.Position := APosition;
    AStream.Read(Result, SizeOf(Result));
  end;

  procedure StreamWriteTPointF(const AStream: TStream; const AValue: TPointF);
  begin
    StreamWriteTPointF(AStream, AValue, AStream.Size);
  end;

  procedure StreamWriteTPointF(const AStream: TStream; const AValue: TPointF; const APosition: Int64);
  begin
    AStream.Position := APosition;
    AStream.Write(AValue, SizeOf(AValue));
  end;

  procedure StreamWriteTRectF(const AStream: TStream; const AValue: TRectF);
  begin
    StreamWriteTRectF(AStream, AValue, AStream.Size);
  end;

  procedure StreamWriteTRectF(const AStream: TStream; const AValue: TRectF; const APosition: Int64);
  begin
    AStream.Position := APosition;
    AStream.Write(AValue, SizeOf(AValue));
  end;

  procedure StreamWriteTSizeF(const AStream: TStream; const AValue: TSizeF);
  begin
    StreamWriteTSizeF(AStream, AValue, AStream.Size);
  end;

  procedure StreamWriteTSizeF(const AStream: TStream; const AValue: TSizeF; const APosition: Int64);
  begin
    AStream.Position := APosition;
    AStream.Write(AValue, SizeOf(AValue));
  end;
{$ENDIF SUPPORTS_FIREMONKEY}

// Delete Methods

procedure StreamDeleteTPoint(const ACaret: ILKStreamCaret);
begin
  ACaret.Delete(SizeOf(TPoint));
end;

procedure StreamDeleteTPoint(const ACaret: ILKStreamCaret; const APosition: Int64);
begin
  ACaret.Position := APosition;
  StreamDeleteTPoint(ACaret);
end;

procedure StreamDeleteTRect(const ACaret: ILKStreamCaret);
begin
  ACaret.Delete(SizeOf(TRect));
end;

procedure StreamDeleteTRect(const ACaret: ILKStreamCaret; const APosition: Int64);
begin
  StreamDeleteTRect(ACaret);
end;

procedure StreamDeleteTSize(const ACaret: ILKStreamCaret);
begin
  ACaret.Delete(SizeOf(TSize));
end;

procedure StreamDeleteTSize(const ACaret: ILKStreamCaret; const APosition: Int64);
begin
  StreamDeleteTSize(ACaret);
end;

procedure StreamDeleteTSmallPoint(const ACaret: ILKStreamCaret);
begin
  ACaret.Delete(SizeOf(TSmallPoint));
end;

procedure StreamDeleteTSmallPoint(const ACaret: ILKStreamCaret; const APosition: Int64);
begin
  StreamDeleteTSmallPoint(ACaret);
end;

// Insert Methods

procedure StreamInsertTPoint(const ACaret: ILKStreamCaret; const AValue: TPoint);
begin
  ACaret.Insert(AValue, SizeOf(AValue));
end;

procedure StreamInsertTPoint(const ACaret: ILKStreamCaret; const AValue: TPoint; const APosition: Int64);
begin
  ACaret.Position := APosition;
  StreamInsertTPoint(ACaret, AValue);
end;

procedure StreamInsertTRect(const ACaret: ILKStreamCaret; const AValue: TRect);
begin
  ACaret.Insert(AValue, SizeOf(AValue));
end;

procedure StreamInsertTRect(const ACaret: ILKStreamCaret; const AValue: TRect; const APosition: Int64);
begin
  ACaret.Position := APosition;
  StreamInsertTRect(ACaret, AValue);
end;

procedure StreamInsertTSize(const ACaret: ILKStreamCaret; const AValue: TSize);
begin
  ACaret.Insert(AValue, SizeOf(AValue));
end;

procedure StreamInsertTSize(const ACaret: ILKStreamCaret; const AValue: TSize; const APosition: Int64);
begin
  ACaret.Position := APosition;
  StreamInsertTSize(ACaret, AValue);
end;

procedure StreamInsertTSmallPoint(const ACaret: ILKStreamCaret; const AValue: TSmallPoint);
begin
  ACaret.Insert(AValue, SizeOf(AValue));
end;

procedure StreamInsertTSmallPoint(const ACaret: ILKStreamCaret; const AValue: TSmallPoint; const APosition: Int64);
begin
  ACaret.Position := APosition;
  StreamInsertTSmallPoint(ACaret, AValue);
end;

// Read Methods

function StreamReadTPoint(const ACaret: ILKStreamCaret): TPoint;
begin
  ACaret.Read(Result, SizeOf(Result));
end;

function StreamReadTPoint(const ACaret: ILKStreamCaret; const APosition: Int64): TPoint;
begin
  ACaret.Position := APosition;
  Result := StreamReadTPoint(ACaret);
end;

function StreamReadTRect(const ACaret: ILKStreamCaret): TRect;
begin
  ACaret.Read(Result, SizeOf(Result));
end;

function StreamReadTRect(const ACaret: ILKStreamCaret; const APosition: Int64): TRect;
begin
  ACaret.Position := APosition;
  Result := StreamReadTRect(ACaret);
end;

function StreamReadTSize(const ACaret: ILKStreamCaret): TSize;
begin
  ACaret.Read(Result, SizeOf(Result));
end;

function StreamReadTSize(const ACaret: ILKStreamCaret; const APosition: Int64): TSize;
begin
  ACaret.Position := APosition;
  Result := StreamReadTSize(ACaret);
end;

function StreamReadTSmallPoint(const ACaret: ILKStreamCaret): TSmallPoint;
begin
  ACaret.Read(Result, SizeOf(Result));
end;

function StreamReadTSmallPoint(const ACaret: ILKStreamCaret; const APosition: Int64): TSmallPoint;
begin
  ACaret.Position := APosition;
  Result := StreamReadTSmallPoint(ACaret);
end;

// Write Methods

procedure StreamWriteTPoint(const ACaret: ILKStreamCaret; const AValue: TPoint);
begin
  ACaret.Write(AValue, SizeOf(AValue));
end;

procedure StreamWriteTPoint(const ACaret: ILKStreamCaret; const AValue: TPoint; const APosition: Int64);
begin
  ACaret.Position := APosition;
  StreamWriteTPoint(ACaret, AValue);
end;

procedure StreamWriteTRect(const ACaret: ILKStreamCaret; const AValue: TRect);
begin
  ACaret.Write(AValue, SizeOf(AValue));
end;

procedure StreamWriteTRect(const ACaret: ILKStreamCaret; const AValue: TRect; const APosition: Int64);
begin
  ACaret.Position := APosition;
  StreamWriteTRect(ACaret, AValue);
end;

procedure StreamWriteTSize(const ACaret: ILKStreamCaret; const AValue: TSize);
begin
  ACaret.Write(AValue, SizeOf(AValue));
end;

procedure StreamWriteTSize(const ACaret: ILKStreamCaret; const AValue: TSize; const APosition: Int64);
begin
  ACaret.Position := APosition;
  StreamWriteTSize(ACaret, AValue);
end;

procedure StreamWriteTSmallPoint(const ACaret: ILKStreamCaret; const AValue: TSmallPoint);
begin
  ACaret.Write(AValue, SizeOf(AValue));
end;

procedure StreamWriteTSmallPoint(const ACaret: ILKStreamCaret; const AValue: TSmallPoint; const APosition: Int64);
begin
  ACaret.Position := APosition;
  StreamWriteTSmallPoint(ACaret, AValue);
end;

{$IFDEF SUPPORTS_FIREMONKEY}
  procedure StreamDeleteTPointF(const ACaret: ILKStreamCaret);
  begin
    ACaret.Delete(SizeOf(TPointF));
  end;

  procedure StreamDeleteTPointF(const ACaret: ILKStreamCaret; const APosition: Int64);
  begin
    ACaret.Position := APosition;
    StreamDeleteTPointF(ACaret);
  end;

  procedure StreamDeleteTRectF(const ACaret: ILKStreamCaret);
  begin
    ACaret.Delete(SizeOf(TRectF));
  end;

  procedure StreamDeleteTRectF(const ACaret: ILKStreamCaret; const APosition: Int64);
  begin
    ACaret.Position := APosition;
    StreamDeleteTRectF(ACaret);
  end;

  procedure StreamDeleteTSizeF(const ACaret: ILKStreamCaret);
  begin
    ACaret.Delete(SizeOf(TSizeF));
  end;

  procedure StreamDeleteTSizeF(const ACaret: ILKStreamCaret; const APosition: Int64);
  begin
    ACaret.Position := APosition;
    StreamDeleteTSizeF(ACaret);
  end;

  procedure StreamInsertTPointF(const ACaret: ILKStreamCaret; const AValue: TPointF);
  begin
    ACaret.Insert(AValue, SizeOf(AValue));
  end;

  procedure StreamInsertTPointF(const ACaret: ILKStreamCaret; const AValue: TPointF; const APosition: Int64);
  begin
    ACaret.Position := APosition;
    StreamInsertTPointF(ACaret, AValue);
  end;

  procedure StreamInsertTRectF(const ACaret: ILKStreamCaret; const AValue: TRectF);
  begin
    ACaret.Insert(AValue, SizeOf(AValue));
  end;

  procedure StreamInsertTRectF(const ACaret: ILKStreamCaret; const AValue: TRectF; const APosition: Int64);
  begin
    ACaret.Position := APosition;
    StreamInsertTRectF(ACaret, AValue);
  end;

  procedure StreamInsertTSizeF(const ACaret: ILKStreamCaret; const AValue: TSizeF);
  begin
    ACaret.Insert(AValue, SizeOf(AValue));
  end;

  procedure StreamInsertTSizeF(const ACaret: ILKStreamCaret; const AValue: TSizeF; const APosition: Int64);
  begin
    ACaret.Position := APosition;
    StreamInsertTSizeF(ACaret, AValue);
  end;

  function StreamReadTPointF(const ACaret: ILKStreamCaret): TPointF;
  begin
    ACaret.Read(Result, SizeOf(Result));
  end;

  function StreamReadTPointF(const ACaret: ILKStreamCaret; const APosition: Int64): TPointF;
  begin
    ACaret.Position := APosition;
    Result := StreamReadTPointF(ACaret);
  end;

  function StreamReadTRectF(const ACaret: ILKStreamCaret): TRectF;
  begin
    ACaret.Read(Result, SizeOf(Result));
  end;

  function StreamReadTRectF(const ACaret: ILKStreamCaret; const APosition: Int64): TRectF;
  begin
    ACaret.Position := APosition;
    Result := StreamReadTRectF(ACaret);
  end;

  function StreamReadTSizeF(const ACaret: ILKStreamCaret): TSizeF;
  begin
    ACaret.Read(Result, SizeOf(Result));
  end;

  function StreamReadTSizeF(const ACaret: ILKStreamCaret; const APosition: Int64): TSizeF;
  begin
    ACaret.Position := APosition;
    Result := StreamReadTSizeF(ACaret);
  end;

  procedure StreamWriteTPointF(const ACaret: ILKStreamCaret; const AValue: TPointF);
  begin
    Acaret.Write(AValue, SizeOf(AValue));
  end;

  procedure StreamWriteTPointF(const ACaret: ILKStreamCaret; const AValue: TPointF; const APosition: Int64);
  begin
    ACaret.Position := APosition;
    StreamWriteTPointF(ACaret, AValue);
  end;

  procedure StreamWriteTRectF(const ACaret: ILKStreamCaret; const AValue: TRectF);
  begin
    Acaret.Write(AValue, SizeOf(AValue));
  end;

  procedure StreamWriteTRectF(const ACaret: ILKStreamCaret; const AValue: TRectF; const APosition: Int64);
  begin
    ACaret.Position := APosition;
    StreamWriteTRectF(ACaret, AValue);
  end;

  procedure StreamWriteTSizeF(const ACaret: ILKStreamCaret; const AValue: TSizeF);
  begin
    Acaret.Write(AValue, SizeOf(AValue));
  end;

  procedure StreamWriteTSizeF(const ACaret: ILKStreamCaret; const AValue: TSizeF; const APosition: Int64);
  begin
    ACaret.Position := APosition;
    StreamWriteTSizeF(ACaret, AValue);
  end;
{$ENDIF SUPPORTS_FIREMONKEY}

end.
