??/
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.02v2.4.0-0-g582c8d236cb8??'
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
encoder_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameencoder_layer1/kernel
?
)encoder_layer1/kernel/Read/ReadVariableOpReadVariableOpencoder_layer1/kernel* 
_output_shapes
:
??*
dtype0

encoder_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameencoder_layer1/bias
x
'encoder_layer1/bias/Read/ReadVariableOpReadVariableOpencoder_layer1/bias*
_output_shapes	
:?*
dtype0
?
encoder_layer2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*&
shared_nameencoder_layer2/kernel
?
)encoder_layer2/kernel/Read/ReadVariableOpReadVariableOpencoder_layer2/kernel*
_output_shapes
:	?@*
dtype0
~
encoder_layer2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameencoder_layer2/bias
w
'encoder_layer2/bias/Read/ReadVariableOpReadVariableOpencoder_layer2/bias*
_output_shapes
:@*
dtype0
?
encoder_layer3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameencoder_layer3/gamma
y
(encoder_layer3/gamma/Read/ReadVariableOpReadVariableOpencoder_layer3/gamma*
_output_shapes
:@*
dtype0
~
encoder_layer3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameencoder_layer3/beta
w
'encoder_layer3/beta/Read/ReadVariableOpReadVariableOpencoder_layer3/beta*
_output_shapes
:@*
dtype0
?
encoder_layer3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameencoder_layer3/moving_mean
?
.encoder_layer3/moving_mean/Read/ReadVariableOpReadVariableOpencoder_layer3/moving_mean*
_output_shapes
:@*
dtype0
?
encoder_layer3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name encoder_layer3/moving_variance
?
2encoder_layer3/moving_variance/Read/ReadVariableOpReadVariableOpencoder_layer3/moving_variance*
_output_shapes
:@*
dtype0
?
encoder_layer5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*&
shared_nameencoder_layer5/kernel
?
)encoder_layer5/kernel/Read/ReadVariableOpReadVariableOpencoder_layer5/kernel*
_output_shapes
:	@?*
dtype0

encoder_layer5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameencoder_layer5/bias
x
'encoder_layer5/bias/Read/ReadVariableOpReadVariableOpencoder_layer5/bias*
_output_shapes	
:?*
dtype0
?
encoder_layer6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameencoder_layer6/kernel
?
)encoder_layer6/kernel/Read/ReadVariableOpReadVariableOpencoder_layer6/kernel* 
_output_shapes
:
??*
dtype0

encoder_layer6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameencoder_layer6/bias
x
'encoder_layer6/bias/Read/ReadVariableOpReadVariableOpencoder_layer6/bias*
_output_shapes	
:?*
dtype0
?
encoder_layer7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameencoder_layer7/kernel
?
)encoder_layer7/kernel/Read/ReadVariableOpReadVariableOpencoder_layer7/kernel* 
_output_shapes
:
??*
dtype0

encoder_layer7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameencoder_layer7/bias
x
'encoder_layer7/bias/Read/ReadVariableOpReadVariableOpencoder_layer7/bias*
_output_shapes	
:?*
dtype0
?
encoder_layer8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*&
shared_nameencoder_layer8/kernel
?
)encoder_layer8/kernel/Read/ReadVariableOpReadVariableOpencoder_layer8/kernel*
_output_shapes
:	?@*
dtype0
~
encoder_layer8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameencoder_layer8/bias
w
'encoder_layer8/bias/Read/ReadVariableOpReadVariableOpencoder_layer8/bias*
_output_shapes
:@*
dtype0
?
encoder_layer9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameencoder_layer9/gamma
y
(encoder_layer9/gamma/Read/ReadVariableOpReadVariableOpencoder_layer9/gamma*
_output_shapes
:@*
dtype0
~
encoder_layer9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameencoder_layer9/beta
w
'encoder_layer9/beta/Read/ReadVariableOpReadVariableOpencoder_layer9/beta*
_output_shapes
:@*
dtype0
?
encoder_layer9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameencoder_layer9/moving_mean
?
.encoder_layer9/moving_mean/Read/ReadVariableOpReadVariableOpencoder_layer9/moving_mean*
_output_shapes
:@*
dtype0
?
encoder_layer9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name encoder_layer9/moving_variance
?
2encoder_layer9/moving_variance/Read/ReadVariableOpReadVariableOpencoder_layer9/moving_variance*
_output_shapes
:@*
dtype0
?
output_encoder/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*&
shared_nameoutput_encoder/kernel

)output_encoder/kernel/Read/ReadVariableOpReadVariableOpoutput_encoder/kernel*
_output_shapes

:@
*
dtype0
~
output_encoder/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameoutput_encoder/bias
w
'output_encoder/bias/Read/ReadVariableOpReadVariableOpoutput_encoder/bias*
_output_shapes
:
*
dtype0
?
decoder_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*&
shared_namedecoder_layer1/kernel
?
)decoder_layer1/kernel/Read/ReadVariableOpReadVariableOpdecoder_layer1/kernel*
_output_shapes
:	
?*
dtype0

decoder_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_namedecoder_layer1/bias
x
'decoder_layer1/bias/Read/ReadVariableOpReadVariableOpdecoder_layer1/bias*
_output_shapes	
:?*
dtype0
?
decoder_layer2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_namedecoder_layer2/kernel
?
)decoder_layer2/kernel/Read/ReadVariableOpReadVariableOpdecoder_layer2/kernel* 
_output_shapes
:
??*
dtype0

decoder_layer2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_namedecoder_layer2/bias
x
'decoder_layer2/bias/Read/ReadVariableOpReadVariableOpdecoder_layer2/bias*
_output_shapes	
:?*
dtype0
?
decoder_layer3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_namedecoder_layer3/gamma
z
(decoder_layer3/gamma/Read/ReadVariableOpReadVariableOpdecoder_layer3/gamma*
_output_shapes	
:?*
dtype0

decoder_layer3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_namedecoder_layer3/beta
x
'decoder_layer3/beta/Read/ReadVariableOpReadVariableOpdecoder_layer3/beta*
_output_shapes	
:?*
dtype0
?
decoder_layer3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namedecoder_layer3/moving_mean
?
.decoder_layer3/moving_mean/Read/ReadVariableOpReadVariableOpdecoder_layer3/moving_mean*
_output_shapes	
:?*
dtype0
?
decoder_layer3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name decoder_layer3/moving_variance
?
2decoder_layer3/moving_variance/Read/ReadVariableOpReadVariableOpdecoder_layer3/moving_variance*
_output_shapes	
:?*
dtype0
?
decoder_layer5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_namedecoder_layer5/kernel
?
)decoder_layer5/kernel/Read/ReadVariableOpReadVariableOpdecoder_layer5/kernel* 
_output_shapes
:
??*
dtype0

decoder_layer5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_namedecoder_layer5/bias
x
'decoder_layer5/bias/Read/ReadVariableOpReadVariableOpdecoder_layer5/bias*
_output_shapes	
:?*
dtype0
?
decoder_layer6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_namedecoder_layer6/kernel
?
)decoder_layer6/kernel/Read/ReadVariableOpReadVariableOpdecoder_layer6/kernel* 
_output_shapes
:
??*
dtype0

decoder_layer6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_namedecoder_layer6/bias
x
'decoder_layer6/bias/Read/ReadVariableOpReadVariableOpdecoder_layer6/bias*
_output_shapes	
:?*
dtype0
?
decoder_layer7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_namedecoder_layer7/kernel
?
)decoder_layer7/kernel/Read/ReadVariableOpReadVariableOpdecoder_layer7/kernel* 
_output_shapes
:
??*
dtype0

decoder_layer7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_namedecoder_layer7/bias
x
'decoder_layer7/bias/Read/ReadVariableOpReadVariableOpdecoder_layer7/bias*
_output_shapes	
:?*
dtype0
?
decoder_layer8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*&
shared_namedecoder_layer8/kernel
?
)decoder_layer8/kernel/Read/ReadVariableOpReadVariableOpdecoder_layer8/kernel*
_output_shapes
:	?@*
dtype0
~
decoder_layer8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_namedecoder_layer8/bias
w
'decoder_layer8/bias/Read/ReadVariableOpReadVariableOpdecoder_layer8/bias*
_output_shapes
:@*
dtype0
?
decoder_layer9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namedecoder_layer9/gamma
y
(decoder_layer9/gamma/Read/ReadVariableOpReadVariableOpdecoder_layer9/gamma*
_output_shapes
:@*
dtype0
~
decoder_layer9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_namedecoder_layer9/beta
w
'decoder_layer9/beta/Read/ReadVariableOpReadVariableOpdecoder_layer9/beta*
_output_shapes
:@*
dtype0
?
decoder_layer9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namedecoder_layer9/moving_mean
?
.decoder_layer9/moving_mean/Read/ReadVariableOpReadVariableOpdecoder_layer9/moving_mean*
_output_shapes
:@*
dtype0
?
decoder_layer9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name decoder_layer9/moving_variance
?
2decoder_layer9/moving_variance/Read/ReadVariableOpReadVariableOpdecoder_layer9/moving_variance*
_output_shapes
:@*
dtype0
?
output_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*$
shared_nameoutput_layer/kernel
|
'output_layer/kernel/Read/ReadVariableOpReadVariableOpoutput_layer/kernel*
_output_shapes
:	@?*
dtype0
{
output_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameoutput_layer/bias
t
%output_layer/bias/Read/ReadVariableOpReadVariableOpoutput_layer/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/encoder_layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/encoder_layer1/kernel/m
?
0Adam/encoder_layer1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer1/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/encoder_layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/encoder_layer1/bias/m
?
.Adam/encoder_layer1/bias/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/encoder_layer2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*-
shared_nameAdam/encoder_layer2/kernel/m
?
0Adam/encoder_layer2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer2/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/encoder_layer2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/encoder_layer2/bias/m
?
.Adam/encoder_layer2/bias/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer2/bias/m*
_output_shapes
:@*
dtype0
?
Adam/encoder_layer3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameAdam/encoder_layer3/gamma/m
?
/Adam/encoder_layer3/gamma/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer3/gamma/m*
_output_shapes
:@*
dtype0
?
Adam/encoder_layer3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/encoder_layer3/beta/m
?
.Adam/encoder_layer3/beta/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer3/beta/m*
_output_shapes
:@*
dtype0
?
Adam/encoder_layer5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*-
shared_nameAdam/encoder_layer5/kernel/m
?
0Adam/encoder_layer5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer5/kernel/m*
_output_shapes
:	@?*
dtype0
?
Adam/encoder_layer5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/encoder_layer5/bias/m
?
.Adam/encoder_layer5/bias/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer5/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/encoder_layer6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/encoder_layer6/kernel/m
?
0Adam/encoder_layer6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer6/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/encoder_layer6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/encoder_layer6/bias/m
?
.Adam/encoder_layer6/bias/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer6/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/encoder_layer7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/encoder_layer7/kernel/m
?
0Adam/encoder_layer7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer7/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/encoder_layer7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/encoder_layer7/bias/m
?
.Adam/encoder_layer7/bias/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer7/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/encoder_layer8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*-
shared_nameAdam/encoder_layer8/kernel/m
?
0Adam/encoder_layer8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer8/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/encoder_layer8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/encoder_layer8/bias/m
?
.Adam/encoder_layer8/bias/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer8/bias/m*
_output_shapes
:@*
dtype0
?
Adam/encoder_layer9/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameAdam/encoder_layer9/gamma/m
?
/Adam/encoder_layer9/gamma/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer9/gamma/m*
_output_shapes
:@*
dtype0
?
Adam/encoder_layer9/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/encoder_layer9/beta/m
?
.Adam/encoder_layer9/beta/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer9/beta/m*
_output_shapes
:@*
dtype0
?
Adam/output_encoder/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*-
shared_nameAdam/output_encoder/kernel/m
?
0Adam/output_encoder/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output_encoder/kernel/m*
_output_shapes

:@
*
dtype0
?
Adam/output_encoder/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameAdam/output_encoder/bias/m
?
.Adam/output_encoder/bias/m/Read/ReadVariableOpReadVariableOpAdam/output_encoder/bias/m*
_output_shapes
:
*
dtype0
?
Adam/decoder_layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*-
shared_nameAdam/decoder_layer1/kernel/m
?
0Adam/decoder_layer1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer1/kernel/m*
_output_shapes
:	
?*
dtype0
?
Adam/decoder_layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/decoder_layer1/bias/m
?
.Adam/decoder_layer1/bias/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/decoder_layer2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/decoder_layer2/kernel/m
?
0Adam/decoder_layer2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer2/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/decoder_layer2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/decoder_layer2/bias/m
?
.Adam/decoder_layer2/bias/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer2/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/decoder_layer3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameAdam/decoder_layer3/gamma/m
?
/Adam/decoder_layer3/gamma/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer3/gamma/m*
_output_shapes	
:?*
dtype0
?
Adam/decoder_layer3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/decoder_layer3/beta/m
?
.Adam/decoder_layer3/beta/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer3/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/decoder_layer5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/decoder_layer5/kernel/m
?
0Adam/decoder_layer5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer5/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/decoder_layer5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/decoder_layer5/bias/m
?
.Adam/decoder_layer5/bias/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer5/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/decoder_layer6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/decoder_layer6/kernel/m
?
0Adam/decoder_layer6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer6/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/decoder_layer6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/decoder_layer6/bias/m
?
.Adam/decoder_layer6/bias/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer6/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/decoder_layer7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/decoder_layer7/kernel/m
?
0Adam/decoder_layer7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer7/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/decoder_layer7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/decoder_layer7/bias/m
?
.Adam/decoder_layer7/bias/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer7/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/decoder_layer8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*-
shared_nameAdam/decoder_layer8/kernel/m
?
0Adam/decoder_layer8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer8/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/decoder_layer8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/decoder_layer8/bias/m
?
.Adam/decoder_layer8/bias/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer8/bias/m*
_output_shapes
:@*
dtype0
?
Adam/decoder_layer9/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameAdam/decoder_layer9/gamma/m
?
/Adam/decoder_layer9/gamma/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer9/gamma/m*
_output_shapes
:@*
dtype0
?
Adam/decoder_layer9/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/decoder_layer9/beta/m
?
.Adam/decoder_layer9/beta/m/Read/ReadVariableOpReadVariableOpAdam/decoder_layer9/beta/m*
_output_shapes
:@*
dtype0
?
Adam/output_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*+
shared_nameAdam/output_layer/kernel/m
?
.Adam/output_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output_layer/kernel/m*
_output_shapes
:	@?*
dtype0
?
Adam/output_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/output_layer/bias/m
?
,Adam/output_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/output_layer/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/encoder_layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/encoder_layer1/kernel/v
?
0Adam/encoder_layer1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer1/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/encoder_layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/encoder_layer1/bias/v
?
.Adam/encoder_layer1/bias/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/encoder_layer2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*-
shared_nameAdam/encoder_layer2/kernel/v
?
0Adam/encoder_layer2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer2/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/encoder_layer2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/encoder_layer2/bias/v
?
.Adam/encoder_layer2/bias/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer2/bias/v*
_output_shapes
:@*
dtype0
?
Adam/encoder_layer3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameAdam/encoder_layer3/gamma/v
?
/Adam/encoder_layer3/gamma/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer3/gamma/v*
_output_shapes
:@*
dtype0
?
Adam/encoder_layer3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/encoder_layer3/beta/v
?
.Adam/encoder_layer3/beta/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer3/beta/v*
_output_shapes
:@*
dtype0
?
Adam/encoder_layer5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*-
shared_nameAdam/encoder_layer5/kernel/v
?
0Adam/encoder_layer5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer5/kernel/v*
_output_shapes
:	@?*
dtype0
?
Adam/encoder_layer5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/encoder_layer5/bias/v
?
.Adam/encoder_layer5/bias/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer5/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/encoder_layer6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/encoder_layer6/kernel/v
?
0Adam/encoder_layer6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer6/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/encoder_layer6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/encoder_layer6/bias/v
?
.Adam/encoder_layer6/bias/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer6/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/encoder_layer7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/encoder_layer7/kernel/v
?
0Adam/encoder_layer7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer7/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/encoder_layer7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/encoder_layer7/bias/v
?
.Adam/encoder_layer7/bias/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer7/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/encoder_layer8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*-
shared_nameAdam/encoder_layer8/kernel/v
?
0Adam/encoder_layer8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer8/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/encoder_layer8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/encoder_layer8/bias/v
?
.Adam/encoder_layer8/bias/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer8/bias/v*
_output_shapes
:@*
dtype0
?
Adam/encoder_layer9/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameAdam/encoder_layer9/gamma/v
?
/Adam/encoder_layer9/gamma/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer9/gamma/v*
_output_shapes
:@*
dtype0
?
Adam/encoder_layer9/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/encoder_layer9/beta/v
?
.Adam/encoder_layer9/beta/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer9/beta/v*
_output_shapes
:@*
dtype0
?
Adam/output_encoder/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*-
shared_nameAdam/output_encoder/kernel/v
?
0Adam/output_encoder/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output_encoder/kernel/v*
_output_shapes

:@
*
dtype0
?
Adam/output_encoder/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameAdam/output_encoder/bias/v
?
.Adam/output_encoder/bias/v/Read/ReadVariableOpReadVariableOpAdam/output_encoder/bias/v*
_output_shapes
:
*
dtype0
?
Adam/decoder_layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
?*-
shared_nameAdam/decoder_layer1/kernel/v
?
0Adam/decoder_layer1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer1/kernel/v*
_output_shapes
:	
?*
dtype0
?
Adam/decoder_layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/decoder_layer1/bias/v
?
.Adam/decoder_layer1/bias/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/decoder_layer2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/decoder_layer2/kernel/v
?
0Adam/decoder_layer2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer2/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/decoder_layer2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/decoder_layer2/bias/v
?
.Adam/decoder_layer2/bias/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer2/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/decoder_layer3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameAdam/decoder_layer3/gamma/v
?
/Adam/decoder_layer3/gamma/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer3/gamma/v*
_output_shapes	
:?*
dtype0
?
Adam/decoder_layer3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/decoder_layer3/beta/v
?
.Adam/decoder_layer3/beta/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer3/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/decoder_layer5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/decoder_layer5/kernel/v
?
0Adam/decoder_layer5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer5/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/decoder_layer5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/decoder_layer5/bias/v
?
.Adam/decoder_layer5/bias/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer5/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/decoder_layer6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/decoder_layer6/kernel/v
?
0Adam/decoder_layer6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer6/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/decoder_layer6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/decoder_layer6/bias/v
?
.Adam/decoder_layer6/bias/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer6/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/decoder_layer7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/decoder_layer7/kernel/v
?
0Adam/decoder_layer7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer7/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/decoder_layer7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/decoder_layer7/bias/v
?
.Adam/decoder_layer7/bias/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer7/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/decoder_layer8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*-
shared_nameAdam/decoder_layer8/kernel/v
?
0Adam/decoder_layer8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer8/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/decoder_layer8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/decoder_layer8/bias/v
?
.Adam/decoder_layer8/bias/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer8/bias/v*
_output_shapes
:@*
dtype0
?
Adam/decoder_layer9/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameAdam/decoder_layer9/gamma/v
?
/Adam/decoder_layer9/gamma/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer9/gamma/v*
_output_shapes
:@*
dtype0
?
Adam/decoder_layer9/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/decoder_layer9/beta/v
?
.Adam/decoder_layer9/beta/v/Read/ReadVariableOpReadVariableOpAdam/decoder_layer9/beta/v*
_output_shapes
:@*
dtype0
?
Adam/output_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*+
shared_nameAdam/output_layer/kernel/v
?
.Adam/output_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output_layer/kernel/v*
_output_shapes
:	@?*
dtype0
?
Adam/output_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/output_layer/bias/v
?
,Adam/output_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/output_layer/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
 
?

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
layer_with_weights-6
layer-8
layer_with_weights-7
layer-9
layer-10
layer_with_weights-8
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
 layer_with_weights-4
 layer-6
!layer_with_weights-5
!layer-7
"layer_with_weights-6
"layer-8
#layer_with_weights-7
#layer-9
$layer-10
%layer_with_weights-8
%layer-11
&	variables
'trainable_variables
(regularization_losses
)	keras_api
?
*iter

+beta_1

,beta_2
	-decay
.learning_rate/m?0m?1m?2m?3m?4m?7m?8m?9m?:m?;m?<m?=m?>m??m?@m?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Mm?Nm?Om?Pm?Qm?Rm?Sm?Tm?Um?Vm?Ym?Zm?/v?0v?1v?2v?3v?4v?7v?8v?9v?:v?;v?<v?=v?>v??v?@v?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Mv?Nv?Ov?Pv?Qv?Rv?Sv?Tv?Uv?Vv?Yv?Zv?
?
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19
C20
D21
E22
F23
G24
H25
I26
J27
K28
L29
M30
N31
O32
P33
Q34
R35
S36
T37
U38
V39
W40
X41
Y42
Z43
?
/0
01
12
23
34
45
76
87
98
:9
;10
<11
=12
>13
?14
@15
C16
D17
E18
F19
G20
H21
I22
J23
M24
N25
O26
P27
Q28
R29
S30
T31
U32
V33
Y34
Z35
 
?
	variables
[metrics
trainable_variables
\layer_regularization_losses

]layers
regularization_losses
^non_trainable_variables
_layer_metrics
 
 
h

/kernel
0bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
h

1kernel
2bias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
?
haxis
	3gamma
4beta
5moving_mean
6moving_variance
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
R
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
h

7kernel
8bias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
h

9kernel
:bias
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
h

;kernel
<bias
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
i

=kernel
>bias
}	variables
~trainable_variables
regularization_losses
?	keras_api
?
	?axis
	?gamma
@beta
Amoving_mean
Bmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Ckernel
Dbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19
C20
D21
?
/0
01
12
23
34
45
76
87
98
:9
;10
<11
=12
>13
?14
@15
C16
D17
 
?
	variables
?metrics
trainable_variables
 ?layer_regularization_losses
?layers
regularization_losses
?non_trainable_variables
?layer_metrics
 
l

Ekernel
Fbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Gkernel
Hbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis
	Igamma
Jbeta
Kmoving_mean
Lmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Mkernel
Nbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Okernel
Pbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Qkernel
Rbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Skernel
Tbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis
	Ugamma
Vbeta
Wmoving_mean
Xmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Ykernel
Zbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
E0
F1
G2
H3
I4
J5
K6
L7
M8
N9
O10
P11
Q12
R13
S14
T15
U16
V17
W18
X19
Y20
Z21
?
E0
F1
G2
H3
I4
J5
M6
N7
O8
P9
Q10
R11
S12
T13
U14
V15
Y16
Z17
 
?
&	variables
?metrics
'trainable_variables
 ?layer_regularization_losses
?layers
(regularization_losses
?non_trainable_variables
?layer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEencoder_layer1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEencoder_layer1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEencoder_layer2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEencoder_layer2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEencoder_layer3/gamma&variables/4/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEencoder_layer3/beta&variables/5/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEencoder_layer3/moving_mean&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEencoder_layer3/moving_variance&variables/7/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEencoder_layer5/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEencoder_layer5/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEencoder_layer6/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEencoder_layer6/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEencoder_layer7/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEencoder_layer7/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEencoder_layer8/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEencoder_layer8/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEencoder_layer9/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEencoder_layer9/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEencoder_layer9/moving_mean'variables/18/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEencoder_layer9/moving_variance'variables/19/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEoutput_encoder/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEoutput_encoder/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdecoder_layer1/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEdecoder_layer1/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdecoder_layer2/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEdecoder_layer2/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEdecoder_layer3/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEdecoder_layer3/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdecoder_layer3/moving_mean'variables/28/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdecoder_layer3/moving_variance'variables/29/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdecoder_layer5/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEdecoder_layer5/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdecoder_layer6/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEdecoder_layer6/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdecoder_layer7/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEdecoder_layer7/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdecoder_layer8/kernel'variables/36/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEdecoder_layer8/bias'variables/37/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEdecoder_layer9/gamma'variables/38/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEdecoder_layer9/beta'variables/39/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdecoder_layer9/moving_mean'variables/40/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdecoder_layer9/moving_variance'variables/41/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEoutput_layer/kernel'variables/42/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEoutput_layer/bias'variables/43/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

0
1
2
8
50
61
A2
B3
K4
L5
W6
X7
 

/0
01

/0
01
 
?
`	variables
 ?layer_regularization_losses
?metrics
atrainable_variables
?layers
bregularization_losses
?non_trainable_variables
?layer_metrics

10
21

10
21
 
?
d	variables
 ?layer_regularization_losses
?metrics
etrainable_variables
?layers
fregularization_losses
?non_trainable_variables
?layer_metrics
 

30
41
52
63

30
41
 
?
i	variables
 ?layer_regularization_losses
?metrics
jtrainable_variables
?layers
kregularization_losses
?non_trainable_variables
?layer_metrics
 
 
 
?
m	variables
 ?layer_regularization_losses
?metrics
ntrainable_variables
?layers
oregularization_losses
?non_trainable_variables
?layer_metrics

70
81

70
81
 
?
q	variables
 ?layer_regularization_losses
?metrics
rtrainable_variables
?layers
sregularization_losses
?non_trainable_variables
?layer_metrics

90
:1

90
:1
 
?
u	variables
 ?layer_regularization_losses
?metrics
vtrainable_variables
?layers
wregularization_losses
?non_trainable_variables
?layer_metrics

;0
<1

;0
<1
 
?
y	variables
 ?layer_regularization_losses
?metrics
ztrainable_variables
?layers
{regularization_losses
?non_trainable_variables
?layer_metrics

=0
>1

=0
>1
 
?
}	variables
 ?layer_regularization_losses
?metrics
~trainable_variables
?layers
regularization_losses
?non_trainable_variables
?layer_metrics
 

?0
@1
A2
B3

?0
@1
 
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
 
 
 
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics

C0
D1

C0
D1
 
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
 
 
V

0
1
2
3
4
5
6
7
8
9
10
11

50
61
A2
B3
 

E0
F1

E0
F1
 
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics

G0
H1

G0
H1
 
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
 

I0
J1
K2
L3

I0
J1
 
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
 
 
 
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics

M0
N1

M0
N1
 
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics

O0
P1

O0
P1
 
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics

Q0
R1

Q0
R1
 
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics

S0
T1

S0
T1
 
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
 

U0
V1
W2
X3

U0
V1
 
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
 
 
 
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics

Y0
Z1

Y0
Z1
 
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
 
 
V
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11

K0
L1
W2
X3
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 

50
61
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

A0
B1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

K0
L1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

W0
X1
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
tr
VARIABLE_VALUEAdam/encoder_layer1/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/encoder_layer1/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/encoder_layer2/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/encoder_layer2/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/encoder_layer3/gamma/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/encoder_layer3/beta/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/encoder_layer5/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/encoder_layer5/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/encoder_layer6/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/encoder_layer6/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/encoder_layer7/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/encoder_layer7/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/encoder_layer8/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/encoder_layer8/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/encoder_layer9/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/encoder_layer9/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/output_encoder/kernel/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/output_encoder/bias/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/decoder_layer1/kernel/mCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer1/bias/mCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/decoder_layer2/kernel/mCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer2/bias/mCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/decoder_layer3/gamma/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer3/beta/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/decoder_layer5/kernel/mCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer5/bias/mCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/decoder_layer6/kernel/mCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer6/bias/mCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/decoder_layer7/kernel/mCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer7/bias/mCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/decoder_layer8/kernel/mCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer8/bias/mCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/decoder_layer9/gamma/mCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer9/beta/mCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/output_layer/kernel/mCvariables/42/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUEAdam/output_layer/bias/mCvariables/43/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/encoder_layer1/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/encoder_layer1/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/encoder_layer2/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/encoder_layer2/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/encoder_layer3/gamma/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/encoder_layer3/beta/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/encoder_layer5/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/encoder_layer5/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/encoder_layer6/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/encoder_layer6/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/encoder_layer7/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/encoder_layer7/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/encoder_layer8/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/encoder_layer8/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/encoder_layer9/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/encoder_layer9/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/output_encoder/kernel/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/output_encoder/bias/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/decoder_layer1/kernel/vCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer1/bias/vCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/decoder_layer2/kernel/vCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer2/bias/vCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/decoder_layer3/gamma/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer3/beta/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/decoder_layer5/kernel/vCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer5/bias/vCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/decoder_layer6/kernel/vCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer6/bias/vCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/decoder_layer7/kernel/vCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer7/bias/vCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/decoder_layer8/kernel/vCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer8/bias/vCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/decoder_layer9/gamma/vCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/decoder_layer9/beta/vCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/output_layer/kernel/vCvariables/42/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUEAdam/output_layer/bias/vCvariables/43/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
!serving_default_input_autoencoderPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCall!serving_default_input_autoencoderencoder_layer1/kernelencoder_layer1/biasencoder_layer2/kernelencoder_layer2/biasencoder_layer3/moving_varianceencoder_layer3/gammaencoder_layer3/moving_meanencoder_layer3/betaencoder_layer5/kernelencoder_layer5/biasencoder_layer6/kernelencoder_layer6/biasencoder_layer7/kernelencoder_layer7/biasencoder_layer8/kernelencoder_layer8/biasencoder_layer9/moving_varianceencoder_layer9/gammaencoder_layer9/moving_meanencoder_layer9/betaoutput_encoder/kerneloutput_encoder/biasdecoder_layer1/kerneldecoder_layer1/biasdecoder_layer2/kerneldecoder_layer2/biasdecoder_layer3/moving_variancedecoder_layer3/gammadecoder_layer3/moving_meandecoder_layer3/betadecoder_layer5/kerneldecoder_layer5/biasdecoder_layer6/kerneldecoder_layer6/biasdecoder_layer7/kerneldecoder_layer7/biasdecoder_layer8/kerneldecoder_layer8/biasdecoder_layer9/moving_variancedecoder_layer9/gammadecoder_layer9/moving_meandecoder_layer9/betaoutput_layer/kerneloutput_layer/bias*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_8022126
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?/
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)encoder_layer1/kernel/Read/ReadVariableOp'encoder_layer1/bias/Read/ReadVariableOp)encoder_layer2/kernel/Read/ReadVariableOp'encoder_layer2/bias/Read/ReadVariableOp(encoder_layer3/gamma/Read/ReadVariableOp'encoder_layer3/beta/Read/ReadVariableOp.encoder_layer3/moving_mean/Read/ReadVariableOp2encoder_layer3/moving_variance/Read/ReadVariableOp)encoder_layer5/kernel/Read/ReadVariableOp'encoder_layer5/bias/Read/ReadVariableOp)encoder_layer6/kernel/Read/ReadVariableOp'encoder_layer6/bias/Read/ReadVariableOp)encoder_layer7/kernel/Read/ReadVariableOp'encoder_layer7/bias/Read/ReadVariableOp)encoder_layer8/kernel/Read/ReadVariableOp'encoder_layer8/bias/Read/ReadVariableOp(encoder_layer9/gamma/Read/ReadVariableOp'encoder_layer9/beta/Read/ReadVariableOp.encoder_layer9/moving_mean/Read/ReadVariableOp2encoder_layer9/moving_variance/Read/ReadVariableOp)output_encoder/kernel/Read/ReadVariableOp'output_encoder/bias/Read/ReadVariableOp)decoder_layer1/kernel/Read/ReadVariableOp'decoder_layer1/bias/Read/ReadVariableOp)decoder_layer2/kernel/Read/ReadVariableOp'decoder_layer2/bias/Read/ReadVariableOp(decoder_layer3/gamma/Read/ReadVariableOp'decoder_layer3/beta/Read/ReadVariableOp.decoder_layer3/moving_mean/Read/ReadVariableOp2decoder_layer3/moving_variance/Read/ReadVariableOp)decoder_layer5/kernel/Read/ReadVariableOp'decoder_layer5/bias/Read/ReadVariableOp)decoder_layer6/kernel/Read/ReadVariableOp'decoder_layer6/bias/Read/ReadVariableOp)decoder_layer7/kernel/Read/ReadVariableOp'decoder_layer7/bias/Read/ReadVariableOp)decoder_layer8/kernel/Read/ReadVariableOp'decoder_layer8/bias/Read/ReadVariableOp(decoder_layer9/gamma/Read/ReadVariableOp'decoder_layer9/beta/Read/ReadVariableOp.decoder_layer9/moving_mean/Read/ReadVariableOp2decoder_layer9/moving_variance/Read/ReadVariableOp'output_layer/kernel/Read/ReadVariableOp%output_layer/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp0Adam/encoder_layer1/kernel/m/Read/ReadVariableOp.Adam/encoder_layer1/bias/m/Read/ReadVariableOp0Adam/encoder_layer2/kernel/m/Read/ReadVariableOp.Adam/encoder_layer2/bias/m/Read/ReadVariableOp/Adam/encoder_layer3/gamma/m/Read/ReadVariableOp.Adam/encoder_layer3/beta/m/Read/ReadVariableOp0Adam/encoder_layer5/kernel/m/Read/ReadVariableOp.Adam/encoder_layer5/bias/m/Read/ReadVariableOp0Adam/encoder_layer6/kernel/m/Read/ReadVariableOp.Adam/encoder_layer6/bias/m/Read/ReadVariableOp0Adam/encoder_layer7/kernel/m/Read/ReadVariableOp.Adam/encoder_layer7/bias/m/Read/ReadVariableOp0Adam/encoder_layer8/kernel/m/Read/ReadVariableOp.Adam/encoder_layer8/bias/m/Read/ReadVariableOp/Adam/encoder_layer9/gamma/m/Read/ReadVariableOp.Adam/encoder_layer9/beta/m/Read/ReadVariableOp0Adam/output_encoder/kernel/m/Read/ReadVariableOp.Adam/output_encoder/bias/m/Read/ReadVariableOp0Adam/decoder_layer1/kernel/m/Read/ReadVariableOp.Adam/decoder_layer1/bias/m/Read/ReadVariableOp0Adam/decoder_layer2/kernel/m/Read/ReadVariableOp.Adam/decoder_layer2/bias/m/Read/ReadVariableOp/Adam/decoder_layer3/gamma/m/Read/ReadVariableOp.Adam/decoder_layer3/beta/m/Read/ReadVariableOp0Adam/decoder_layer5/kernel/m/Read/ReadVariableOp.Adam/decoder_layer5/bias/m/Read/ReadVariableOp0Adam/decoder_layer6/kernel/m/Read/ReadVariableOp.Adam/decoder_layer6/bias/m/Read/ReadVariableOp0Adam/decoder_layer7/kernel/m/Read/ReadVariableOp.Adam/decoder_layer7/bias/m/Read/ReadVariableOp0Adam/decoder_layer8/kernel/m/Read/ReadVariableOp.Adam/decoder_layer8/bias/m/Read/ReadVariableOp/Adam/decoder_layer9/gamma/m/Read/ReadVariableOp.Adam/decoder_layer9/beta/m/Read/ReadVariableOp.Adam/output_layer/kernel/m/Read/ReadVariableOp,Adam/output_layer/bias/m/Read/ReadVariableOp0Adam/encoder_layer1/kernel/v/Read/ReadVariableOp.Adam/encoder_layer1/bias/v/Read/ReadVariableOp0Adam/encoder_layer2/kernel/v/Read/ReadVariableOp.Adam/encoder_layer2/bias/v/Read/ReadVariableOp/Adam/encoder_layer3/gamma/v/Read/ReadVariableOp.Adam/encoder_layer3/beta/v/Read/ReadVariableOp0Adam/encoder_layer5/kernel/v/Read/ReadVariableOp.Adam/encoder_layer5/bias/v/Read/ReadVariableOp0Adam/encoder_layer6/kernel/v/Read/ReadVariableOp.Adam/encoder_layer6/bias/v/Read/ReadVariableOp0Adam/encoder_layer7/kernel/v/Read/ReadVariableOp.Adam/encoder_layer7/bias/v/Read/ReadVariableOp0Adam/encoder_layer8/kernel/v/Read/ReadVariableOp.Adam/encoder_layer8/bias/v/Read/ReadVariableOp/Adam/encoder_layer9/gamma/v/Read/ReadVariableOp.Adam/encoder_layer9/beta/v/Read/ReadVariableOp0Adam/output_encoder/kernel/v/Read/ReadVariableOp.Adam/output_encoder/bias/v/Read/ReadVariableOp0Adam/decoder_layer1/kernel/v/Read/ReadVariableOp.Adam/decoder_layer1/bias/v/Read/ReadVariableOp0Adam/decoder_layer2/kernel/v/Read/ReadVariableOp.Adam/decoder_layer2/bias/v/Read/ReadVariableOp/Adam/decoder_layer3/gamma/v/Read/ReadVariableOp.Adam/decoder_layer3/beta/v/Read/ReadVariableOp0Adam/decoder_layer5/kernel/v/Read/ReadVariableOp.Adam/decoder_layer5/bias/v/Read/ReadVariableOp0Adam/decoder_layer6/kernel/v/Read/ReadVariableOp.Adam/decoder_layer6/bias/v/Read/ReadVariableOp0Adam/decoder_layer7/kernel/v/Read/ReadVariableOp.Adam/decoder_layer7/bias/v/Read/ReadVariableOp0Adam/decoder_layer8/kernel/v/Read/ReadVariableOp.Adam/decoder_layer8/bias/v/Read/ReadVariableOp/Adam/decoder_layer9/gamma/v/Read/ReadVariableOp.Adam/decoder_layer9/beta/v/Read/ReadVariableOp.Adam/output_layer/kernel/v/Read/ReadVariableOp,Adam/output_layer/bias/v/Read/ReadVariableOpConst*?
Tin?
?2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_8024494
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateencoder_layer1/kernelencoder_layer1/biasencoder_layer2/kernelencoder_layer2/biasencoder_layer3/gammaencoder_layer3/betaencoder_layer3/moving_meanencoder_layer3/moving_varianceencoder_layer5/kernelencoder_layer5/biasencoder_layer6/kernelencoder_layer6/biasencoder_layer7/kernelencoder_layer7/biasencoder_layer8/kernelencoder_layer8/biasencoder_layer9/gammaencoder_layer9/betaencoder_layer9/moving_meanencoder_layer9/moving_varianceoutput_encoder/kerneloutput_encoder/biasdecoder_layer1/kerneldecoder_layer1/biasdecoder_layer2/kerneldecoder_layer2/biasdecoder_layer3/gammadecoder_layer3/betadecoder_layer3/moving_meandecoder_layer3/moving_variancedecoder_layer5/kerneldecoder_layer5/biasdecoder_layer6/kerneldecoder_layer6/biasdecoder_layer7/kerneldecoder_layer7/biasdecoder_layer8/kerneldecoder_layer8/biasdecoder_layer9/gammadecoder_layer9/betadecoder_layer9/moving_meandecoder_layer9/moving_varianceoutput_layer/kerneloutput_layer/biastotalcounttotal_1count_1Adam/encoder_layer1/kernel/mAdam/encoder_layer1/bias/mAdam/encoder_layer2/kernel/mAdam/encoder_layer2/bias/mAdam/encoder_layer3/gamma/mAdam/encoder_layer3/beta/mAdam/encoder_layer5/kernel/mAdam/encoder_layer5/bias/mAdam/encoder_layer6/kernel/mAdam/encoder_layer6/bias/mAdam/encoder_layer7/kernel/mAdam/encoder_layer7/bias/mAdam/encoder_layer8/kernel/mAdam/encoder_layer8/bias/mAdam/encoder_layer9/gamma/mAdam/encoder_layer9/beta/mAdam/output_encoder/kernel/mAdam/output_encoder/bias/mAdam/decoder_layer1/kernel/mAdam/decoder_layer1/bias/mAdam/decoder_layer2/kernel/mAdam/decoder_layer2/bias/mAdam/decoder_layer3/gamma/mAdam/decoder_layer3/beta/mAdam/decoder_layer5/kernel/mAdam/decoder_layer5/bias/mAdam/decoder_layer6/kernel/mAdam/decoder_layer6/bias/mAdam/decoder_layer7/kernel/mAdam/decoder_layer7/bias/mAdam/decoder_layer8/kernel/mAdam/decoder_layer8/bias/mAdam/decoder_layer9/gamma/mAdam/decoder_layer9/beta/mAdam/output_layer/kernel/mAdam/output_layer/bias/mAdam/encoder_layer1/kernel/vAdam/encoder_layer1/bias/vAdam/encoder_layer2/kernel/vAdam/encoder_layer2/bias/vAdam/encoder_layer3/gamma/vAdam/encoder_layer3/beta/vAdam/encoder_layer5/kernel/vAdam/encoder_layer5/bias/vAdam/encoder_layer6/kernel/vAdam/encoder_layer6/bias/vAdam/encoder_layer7/kernel/vAdam/encoder_layer7/bias/vAdam/encoder_layer8/kernel/vAdam/encoder_layer8/bias/vAdam/encoder_layer9/gamma/vAdam/encoder_layer9/beta/vAdam/output_encoder/kernel/vAdam/output_encoder/bias/vAdam/decoder_layer1/kernel/vAdam/decoder_layer1/bias/vAdam/decoder_layer2/kernel/vAdam/decoder_layer2/bias/vAdam/decoder_layer3/gamma/vAdam/decoder_layer3/beta/vAdam/decoder_layer5/kernel/vAdam/decoder_layer5/bias/vAdam/decoder_layer6/kernel/vAdam/decoder_layer6/bias/vAdam/decoder_layer7/kernel/vAdam/decoder_layer7/bias/vAdam/decoder_layer8/kernel/vAdam/decoder_layer8/bias/vAdam/decoder_layer9/gamma/vAdam/decoder_layer9/beta/vAdam/output_layer/kernel/vAdam/output_layer/bias/v*?
Tin?
?2~*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_8024879??#
?
?
-__inference_AutoEncoder_layer_call_fn_8021836
input_autoencoder
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_autoencoderunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*F
_read_only_resource_inputs(
&$	
 !"#$%&)*+,*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_80217452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameinput_autoencoder
?
?
)__inference_Decoder_layer_call_fn_8023380

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_80212162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????
::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
j
K__inference_decoder_layer4_layer_call_and_return_conditional_losses_8023872

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
K__inference_decoder_layer2_layer_call_and_return_conditional_losses_8020705

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
K__inference_encoder_layer4_layer_call_and_return_conditional_losses_8019893

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
0__inference_decoder_layer7_layer_call_fn_8023947

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer7_layer_call_and_return_conditional_losses_80208512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_AutoEncoder_layer_call_fn_8022023
input_autoencoder
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_autoencoderunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_80219322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameinput_autoencoder
?	
?
K__inference_output_encoder_layer_call_and_return_conditional_losses_8023729

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_Decoder_layer_call_fn_8021155
input_decoder
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_decoderunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_80211082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????
::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????

'
_user_specified_nameinput_decoder
?	
?
K__inference_encoder_layer6_layer_call_and_return_conditional_losses_8023560

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?0
?
K__inference_decoder_layer3_layer_call_and_return_conditional_losses_8020479

inputs
assignmovingavg_8020454
assignmovingavg_1_8020460)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8020454*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_8020454*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8020454*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8020454*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_8020454AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8020454*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8020460*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_8020460*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8020460*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8020460*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_8020460AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8020460*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_decoder_layer9_layer_call_and_return_conditional_losses_8020652

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
L
0__inference_decoder_layer4_layer_call_fn_8023887

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer4_layer_call_and_return_conditional_losses_80207732
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_encoder_layer3_layer_call_and_return_conditional_losses_8019632

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
D__inference_Encoder_layer_call_and_return_conditional_losses_8022877

inputs1
-encoder_layer1_matmul_readvariableop_resource2
.encoder_layer1_biasadd_readvariableop_resource1
-encoder_layer2_matmul_readvariableop_resource2
.encoder_layer2_biasadd_readvariableop_resource*
&encoder_layer3_assignmovingavg_8022769,
(encoder_layer3_assignmovingavg_1_80227758
4encoder_layer3_batchnorm_mul_readvariableop_resource4
0encoder_layer3_batchnorm_readvariableop_resource1
-encoder_layer5_matmul_readvariableop_resource2
.encoder_layer5_biasadd_readvariableop_resource1
-encoder_layer6_matmul_readvariableop_resource2
.encoder_layer6_biasadd_readvariableop_resource1
-encoder_layer7_matmul_readvariableop_resource2
.encoder_layer7_biasadd_readvariableop_resource1
-encoder_layer8_matmul_readvariableop_resource2
.encoder_layer8_biasadd_readvariableop_resource*
&encoder_layer9_assignmovingavg_8022837,
(encoder_layer9_assignmovingavg_1_80228438
4encoder_layer9_batchnorm_mul_readvariableop_resource4
0encoder_layer9_batchnorm_readvariableop_resource1
-output_encoder_matmul_readvariableop_resource2
.output_encoder_biasadd_readvariableop_resource
identity??%encoder_layer1/BiasAdd/ReadVariableOp?$encoder_layer1/MatMul/ReadVariableOp?%encoder_layer2/BiasAdd/ReadVariableOp?$encoder_layer2/MatMul/ReadVariableOp?2encoder_layer3/AssignMovingAvg/AssignSubVariableOp?-encoder_layer3/AssignMovingAvg/ReadVariableOp?4encoder_layer3/AssignMovingAvg_1/AssignSubVariableOp?/encoder_layer3/AssignMovingAvg_1/ReadVariableOp?'encoder_layer3/batchnorm/ReadVariableOp?+encoder_layer3/batchnorm/mul/ReadVariableOp?%encoder_layer5/BiasAdd/ReadVariableOp?$encoder_layer5/MatMul/ReadVariableOp?%encoder_layer6/BiasAdd/ReadVariableOp?$encoder_layer6/MatMul/ReadVariableOp?%encoder_layer7/BiasAdd/ReadVariableOp?$encoder_layer7/MatMul/ReadVariableOp?%encoder_layer8/BiasAdd/ReadVariableOp?$encoder_layer8/MatMul/ReadVariableOp?2encoder_layer9/AssignMovingAvg/AssignSubVariableOp?-encoder_layer9/AssignMovingAvg/ReadVariableOp?4encoder_layer9/AssignMovingAvg_1/AssignSubVariableOp?/encoder_layer9/AssignMovingAvg_1/ReadVariableOp?'encoder_layer9/batchnorm/ReadVariableOp?+encoder_layer9/batchnorm/mul/ReadVariableOp?%output_encoder/BiasAdd/ReadVariableOp?$output_encoder/MatMul/ReadVariableOp?
$encoder_layer1/MatMul/ReadVariableOpReadVariableOp-encoder_layer1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$encoder_layer1/MatMul/ReadVariableOp?
encoder_layer1/MatMulMatMulinputs,encoder_layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer1/MatMul?
%encoder_layer1/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%encoder_layer1/BiasAdd/ReadVariableOp?
encoder_layer1/BiasAddBiasAddencoder_layer1/MatMul:product:0-encoder_layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer1/BiasAdd?
encoder_layer1/ReluReluencoder_layer1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
encoder_layer1/Relu?
$encoder_layer2/MatMul/ReadVariableOpReadVariableOp-encoder_layer2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02&
$encoder_layer2/MatMul/ReadVariableOp?
encoder_layer2/MatMulMatMul!encoder_layer1/Relu:activations:0,encoder_layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
encoder_layer2/MatMul?
%encoder_layer2/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%encoder_layer2/BiasAdd/ReadVariableOp?
encoder_layer2/BiasAddBiasAddencoder_layer2/MatMul:product:0-encoder_layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
encoder_layer2/BiasAdd?
encoder_layer2/ReluReluencoder_layer2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
encoder_layer2/Relu?
-encoder_layer3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2/
-encoder_layer3/moments/mean/reduction_indices?
encoder_layer3/moments/meanMean!encoder_layer2/Relu:activations:06encoder_layer3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
encoder_layer3/moments/mean?
#encoder_layer3/moments/StopGradientStopGradient$encoder_layer3/moments/mean:output:0*
T0*
_output_shapes

:@2%
#encoder_layer3/moments/StopGradient?
(encoder_layer3/moments/SquaredDifferenceSquaredDifference!encoder_layer2/Relu:activations:0,encoder_layer3/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2*
(encoder_layer3/moments/SquaredDifference?
1encoder_layer3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 23
1encoder_layer3/moments/variance/reduction_indices?
encoder_layer3/moments/varianceMean,encoder_layer3/moments/SquaredDifference:z:0:encoder_layer3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2!
encoder_layer3/moments/variance?
encoder_layer3/moments/SqueezeSqueeze$encoder_layer3/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2 
encoder_layer3/moments/Squeeze?
 encoder_layer3/moments/Squeeze_1Squeeze(encoder_layer3/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2"
 encoder_layer3/moments/Squeeze_1?
$encoder_layer3/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*9
_class/
-+loc:@encoder_layer3/AssignMovingAvg/8022769*
_output_shapes
: *
dtype0*
valueB
 *
?#<2&
$encoder_layer3/AssignMovingAvg/decay?
-encoder_layer3/AssignMovingAvg/ReadVariableOpReadVariableOp&encoder_layer3_assignmovingavg_8022769*
_output_shapes
:@*
dtype02/
-encoder_layer3/AssignMovingAvg/ReadVariableOp?
"encoder_layer3/AssignMovingAvg/subSub5encoder_layer3/AssignMovingAvg/ReadVariableOp:value:0'encoder_layer3/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*9
_class/
-+loc:@encoder_layer3/AssignMovingAvg/8022769*
_output_shapes
:@2$
"encoder_layer3/AssignMovingAvg/sub?
"encoder_layer3/AssignMovingAvg/mulMul&encoder_layer3/AssignMovingAvg/sub:z:0-encoder_layer3/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*9
_class/
-+loc:@encoder_layer3/AssignMovingAvg/8022769*
_output_shapes
:@2$
"encoder_layer3/AssignMovingAvg/mul?
2encoder_layer3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp&encoder_layer3_assignmovingavg_8022769&encoder_layer3/AssignMovingAvg/mul:z:0.^encoder_layer3/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*9
_class/
-+loc:@encoder_layer3/AssignMovingAvg/8022769*
_output_shapes
 *
dtype024
2encoder_layer3/AssignMovingAvg/AssignSubVariableOp?
&encoder_layer3/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@encoder_layer3/AssignMovingAvg_1/8022775*
_output_shapes
: *
dtype0*
valueB
 *
?#<2(
&encoder_layer3/AssignMovingAvg_1/decay?
/encoder_layer3/AssignMovingAvg_1/ReadVariableOpReadVariableOp(encoder_layer3_assignmovingavg_1_8022775*
_output_shapes
:@*
dtype021
/encoder_layer3/AssignMovingAvg_1/ReadVariableOp?
$encoder_layer3/AssignMovingAvg_1/subSub7encoder_layer3/AssignMovingAvg_1/ReadVariableOp:value:0)encoder_layer3/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*;
_class1
/-loc:@encoder_layer3/AssignMovingAvg_1/8022775*
_output_shapes
:@2&
$encoder_layer3/AssignMovingAvg_1/sub?
$encoder_layer3/AssignMovingAvg_1/mulMul(encoder_layer3/AssignMovingAvg_1/sub:z:0/encoder_layer3/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*;
_class1
/-loc:@encoder_layer3/AssignMovingAvg_1/8022775*
_output_shapes
:@2&
$encoder_layer3/AssignMovingAvg_1/mul?
4encoder_layer3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp(encoder_layer3_assignmovingavg_1_8022775(encoder_layer3/AssignMovingAvg_1/mul:z:00^encoder_layer3/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@encoder_layer3/AssignMovingAvg_1/8022775*
_output_shapes
 *
dtype026
4encoder_layer3/AssignMovingAvg_1/AssignSubVariableOp?
encoder_layer3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2 
encoder_layer3/batchnorm/add/y?
encoder_layer3/batchnorm/addAddV2)encoder_layer3/moments/Squeeze_1:output:0'encoder_layer3/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
encoder_layer3/batchnorm/add?
encoder_layer3/batchnorm/RsqrtRsqrt encoder_layer3/batchnorm/add:z:0*
T0*
_output_shapes
:@2 
encoder_layer3/batchnorm/Rsqrt?
+encoder_layer3/batchnorm/mul/ReadVariableOpReadVariableOp4encoder_layer3_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02-
+encoder_layer3/batchnorm/mul/ReadVariableOp?
encoder_layer3/batchnorm/mulMul"encoder_layer3/batchnorm/Rsqrt:y:03encoder_layer3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
encoder_layer3/batchnorm/mul?
encoder_layer3/batchnorm/mul_1Mul!encoder_layer2/Relu:activations:0 encoder_layer3/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2 
encoder_layer3/batchnorm/mul_1?
encoder_layer3/batchnorm/mul_2Mul'encoder_layer3/moments/Squeeze:output:0 encoder_layer3/batchnorm/mul:z:0*
T0*
_output_shapes
:@2 
encoder_layer3/batchnorm/mul_2?
'encoder_layer3/batchnorm/ReadVariableOpReadVariableOp0encoder_layer3_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02)
'encoder_layer3/batchnorm/ReadVariableOp?
encoder_layer3/batchnorm/subSub/encoder_layer3/batchnorm/ReadVariableOp:value:0"encoder_layer3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
encoder_layer3/batchnorm/sub?
encoder_layer3/batchnorm/add_1AddV2"encoder_layer3/batchnorm/mul_1:z:0 encoder_layer3/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2 
encoder_layer3/batchnorm/add_1?
encoder_layer4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
encoder_layer4/dropout/Const?
encoder_layer4/dropout/MulMul"encoder_layer3/batchnorm/add_1:z:0%encoder_layer4/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
encoder_layer4/dropout/Mul?
encoder_layer4/dropout/ShapeShape"encoder_layer3/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
encoder_layer4/dropout/Shape?
3encoder_layer4/dropout/random_uniform/RandomUniformRandomUniform%encoder_layer4/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype025
3encoder_layer4/dropout/random_uniform/RandomUniform?
%encoder_layer4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%encoder_layer4/dropout/GreaterEqual/y?
#encoder_layer4/dropout/GreaterEqualGreaterEqual<encoder_layer4/dropout/random_uniform/RandomUniform:output:0.encoder_layer4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2%
#encoder_layer4/dropout/GreaterEqual?
encoder_layer4/dropout/CastCast'encoder_layer4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
encoder_layer4/dropout/Cast?
encoder_layer4/dropout/Mul_1Mulencoder_layer4/dropout/Mul:z:0encoder_layer4/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
encoder_layer4/dropout/Mul_1?
$encoder_layer5/MatMul/ReadVariableOpReadVariableOp-encoder_layer5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$encoder_layer5/MatMul/ReadVariableOp?
encoder_layer5/MatMulMatMul encoder_layer4/dropout/Mul_1:z:0,encoder_layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer5/MatMul?
%encoder_layer5/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%encoder_layer5/BiasAdd/ReadVariableOp?
encoder_layer5/BiasAddBiasAddencoder_layer5/MatMul:product:0-encoder_layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer5/BiasAdd?
encoder_layer5/ReluReluencoder_layer5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
encoder_layer5/Relu?
$encoder_layer6/MatMul/ReadVariableOpReadVariableOp-encoder_layer6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$encoder_layer6/MatMul/ReadVariableOp?
encoder_layer6/MatMulMatMul!encoder_layer5/Relu:activations:0,encoder_layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer6/MatMul?
%encoder_layer6/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%encoder_layer6/BiasAdd/ReadVariableOp?
encoder_layer6/BiasAddBiasAddencoder_layer6/MatMul:product:0-encoder_layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer6/BiasAdd?
encoder_layer6/ReluReluencoder_layer6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
encoder_layer6/Relu?
$encoder_layer7/MatMul/ReadVariableOpReadVariableOp-encoder_layer7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$encoder_layer7/MatMul/ReadVariableOp?
encoder_layer7/MatMulMatMul!encoder_layer6/Relu:activations:0,encoder_layer7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer7/MatMul?
%encoder_layer7/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%encoder_layer7/BiasAdd/ReadVariableOp?
encoder_layer7/BiasAddBiasAddencoder_layer7/MatMul:product:0-encoder_layer7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer7/BiasAdd?
encoder_layer7/ReluReluencoder_layer7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
encoder_layer7/Relu?
$encoder_layer8/MatMul/ReadVariableOpReadVariableOp-encoder_layer8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02&
$encoder_layer8/MatMul/ReadVariableOp?
encoder_layer8/MatMulMatMul!encoder_layer7/Relu:activations:0,encoder_layer8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
encoder_layer8/MatMul?
%encoder_layer8/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%encoder_layer8/BiasAdd/ReadVariableOp?
encoder_layer8/BiasAddBiasAddencoder_layer8/MatMul:product:0-encoder_layer8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
encoder_layer8/BiasAdd?
encoder_layer8/ReluReluencoder_layer8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
encoder_layer8/Relu?
-encoder_layer9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2/
-encoder_layer9/moments/mean/reduction_indices?
encoder_layer9/moments/meanMean!encoder_layer8/Relu:activations:06encoder_layer9/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
encoder_layer9/moments/mean?
#encoder_layer9/moments/StopGradientStopGradient$encoder_layer9/moments/mean:output:0*
T0*
_output_shapes

:@2%
#encoder_layer9/moments/StopGradient?
(encoder_layer9/moments/SquaredDifferenceSquaredDifference!encoder_layer8/Relu:activations:0,encoder_layer9/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2*
(encoder_layer9/moments/SquaredDifference?
1encoder_layer9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 23
1encoder_layer9/moments/variance/reduction_indices?
encoder_layer9/moments/varianceMean,encoder_layer9/moments/SquaredDifference:z:0:encoder_layer9/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2!
encoder_layer9/moments/variance?
encoder_layer9/moments/SqueezeSqueeze$encoder_layer9/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2 
encoder_layer9/moments/Squeeze?
 encoder_layer9/moments/Squeeze_1Squeeze(encoder_layer9/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2"
 encoder_layer9/moments/Squeeze_1?
$encoder_layer9/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*9
_class/
-+loc:@encoder_layer9/AssignMovingAvg/8022837*
_output_shapes
: *
dtype0*
valueB
 *
?#<2&
$encoder_layer9/AssignMovingAvg/decay?
-encoder_layer9/AssignMovingAvg/ReadVariableOpReadVariableOp&encoder_layer9_assignmovingavg_8022837*
_output_shapes
:@*
dtype02/
-encoder_layer9/AssignMovingAvg/ReadVariableOp?
"encoder_layer9/AssignMovingAvg/subSub5encoder_layer9/AssignMovingAvg/ReadVariableOp:value:0'encoder_layer9/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*9
_class/
-+loc:@encoder_layer9/AssignMovingAvg/8022837*
_output_shapes
:@2$
"encoder_layer9/AssignMovingAvg/sub?
"encoder_layer9/AssignMovingAvg/mulMul&encoder_layer9/AssignMovingAvg/sub:z:0-encoder_layer9/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*9
_class/
-+loc:@encoder_layer9/AssignMovingAvg/8022837*
_output_shapes
:@2$
"encoder_layer9/AssignMovingAvg/mul?
2encoder_layer9/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp&encoder_layer9_assignmovingavg_8022837&encoder_layer9/AssignMovingAvg/mul:z:0.^encoder_layer9/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*9
_class/
-+loc:@encoder_layer9/AssignMovingAvg/8022837*
_output_shapes
 *
dtype024
2encoder_layer9/AssignMovingAvg/AssignSubVariableOp?
&encoder_layer9/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@encoder_layer9/AssignMovingAvg_1/8022843*
_output_shapes
: *
dtype0*
valueB
 *
?#<2(
&encoder_layer9/AssignMovingAvg_1/decay?
/encoder_layer9/AssignMovingAvg_1/ReadVariableOpReadVariableOp(encoder_layer9_assignmovingavg_1_8022843*
_output_shapes
:@*
dtype021
/encoder_layer9/AssignMovingAvg_1/ReadVariableOp?
$encoder_layer9/AssignMovingAvg_1/subSub7encoder_layer9/AssignMovingAvg_1/ReadVariableOp:value:0)encoder_layer9/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*;
_class1
/-loc:@encoder_layer9/AssignMovingAvg_1/8022843*
_output_shapes
:@2&
$encoder_layer9/AssignMovingAvg_1/sub?
$encoder_layer9/AssignMovingAvg_1/mulMul(encoder_layer9/AssignMovingAvg_1/sub:z:0/encoder_layer9/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*;
_class1
/-loc:@encoder_layer9/AssignMovingAvg_1/8022843*
_output_shapes
:@2&
$encoder_layer9/AssignMovingAvg_1/mul?
4encoder_layer9/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp(encoder_layer9_assignmovingavg_1_8022843(encoder_layer9/AssignMovingAvg_1/mul:z:00^encoder_layer9/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@encoder_layer9/AssignMovingAvg_1/8022843*
_output_shapes
 *
dtype026
4encoder_layer9/AssignMovingAvg_1/AssignSubVariableOp?
encoder_layer9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2 
encoder_layer9/batchnorm/add/y?
encoder_layer9/batchnorm/addAddV2)encoder_layer9/moments/Squeeze_1:output:0'encoder_layer9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
encoder_layer9/batchnorm/add?
encoder_layer9/batchnorm/RsqrtRsqrt encoder_layer9/batchnorm/add:z:0*
T0*
_output_shapes
:@2 
encoder_layer9/batchnorm/Rsqrt?
+encoder_layer9/batchnorm/mul/ReadVariableOpReadVariableOp4encoder_layer9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02-
+encoder_layer9/batchnorm/mul/ReadVariableOp?
encoder_layer9/batchnorm/mulMul"encoder_layer9/batchnorm/Rsqrt:y:03encoder_layer9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
encoder_layer9/batchnorm/mul?
encoder_layer9/batchnorm/mul_1Mul!encoder_layer8/Relu:activations:0 encoder_layer9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2 
encoder_layer9/batchnorm/mul_1?
encoder_layer9/batchnorm/mul_2Mul'encoder_layer9/moments/Squeeze:output:0 encoder_layer9/batchnorm/mul:z:0*
T0*
_output_shapes
:@2 
encoder_layer9/batchnorm/mul_2?
'encoder_layer9/batchnorm/ReadVariableOpReadVariableOp0encoder_layer9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02)
'encoder_layer9/batchnorm/ReadVariableOp?
encoder_layer9/batchnorm/subSub/encoder_layer9/batchnorm/ReadVariableOp:value:0"encoder_layer9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
encoder_layer9/batchnorm/sub?
encoder_layer9/batchnorm/add_1AddV2"encoder_layer9/batchnorm/mul_1:z:0 encoder_layer9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2 
encoder_layer9/batchnorm/add_1?
encoder_layer10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
encoder_layer10/dropout/Const?
encoder_layer10/dropout/MulMul"encoder_layer9/batchnorm/add_1:z:0&encoder_layer10/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
encoder_layer10/dropout/Mul?
encoder_layer10/dropout/ShapeShape"encoder_layer9/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
encoder_layer10/dropout/Shape?
4encoder_layer10/dropout/random_uniform/RandomUniformRandomUniform&encoder_layer10/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype026
4encoder_layer10/dropout/random_uniform/RandomUniform?
&encoder_layer10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&encoder_layer10/dropout/GreaterEqual/y?
$encoder_layer10/dropout/GreaterEqualGreaterEqual=encoder_layer10/dropout/random_uniform/RandomUniform:output:0/encoder_layer10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2&
$encoder_layer10/dropout/GreaterEqual?
encoder_layer10/dropout/CastCast(encoder_layer10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
encoder_layer10/dropout/Cast?
encoder_layer10/dropout/Mul_1Mulencoder_layer10/dropout/Mul:z:0 encoder_layer10/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
encoder_layer10/dropout/Mul_1?
$output_encoder/MatMul/ReadVariableOpReadVariableOp-output_encoder_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02&
$output_encoder/MatMul/ReadVariableOp?
output_encoder/MatMulMatMul!encoder_layer10/dropout/Mul_1:z:0,output_encoder/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
output_encoder/MatMul?
%output_encoder/BiasAdd/ReadVariableOpReadVariableOp.output_encoder_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02'
%output_encoder/BiasAdd/ReadVariableOp?
output_encoder/BiasAddBiasAddoutput_encoder/MatMul:product:0-output_encoder/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
output_encoder/BiasAdd?
output_encoder/ReluReluoutput_encoder/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
output_encoder/Relu?	
IdentityIdentity!output_encoder/Relu:activations:0&^encoder_layer1/BiasAdd/ReadVariableOp%^encoder_layer1/MatMul/ReadVariableOp&^encoder_layer2/BiasAdd/ReadVariableOp%^encoder_layer2/MatMul/ReadVariableOp3^encoder_layer3/AssignMovingAvg/AssignSubVariableOp.^encoder_layer3/AssignMovingAvg/ReadVariableOp5^encoder_layer3/AssignMovingAvg_1/AssignSubVariableOp0^encoder_layer3/AssignMovingAvg_1/ReadVariableOp(^encoder_layer3/batchnorm/ReadVariableOp,^encoder_layer3/batchnorm/mul/ReadVariableOp&^encoder_layer5/BiasAdd/ReadVariableOp%^encoder_layer5/MatMul/ReadVariableOp&^encoder_layer6/BiasAdd/ReadVariableOp%^encoder_layer6/MatMul/ReadVariableOp&^encoder_layer7/BiasAdd/ReadVariableOp%^encoder_layer7/MatMul/ReadVariableOp&^encoder_layer8/BiasAdd/ReadVariableOp%^encoder_layer8/MatMul/ReadVariableOp3^encoder_layer9/AssignMovingAvg/AssignSubVariableOp.^encoder_layer9/AssignMovingAvg/ReadVariableOp5^encoder_layer9/AssignMovingAvg_1/AssignSubVariableOp0^encoder_layer9/AssignMovingAvg_1/ReadVariableOp(^encoder_layer9/batchnorm/ReadVariableOp,^encoder_layer9/batchnorm/mul/ReadVariableOp&^output_encoder/BiasAdd/ReadVariableOp%^output_encoder/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2N
%encoder_layer1/BiasAdd/ReadVariableOp%encoder_layer1/BiasAdd/ReadVariableOp2L
$encoder_layer1/MatMul/ReadVariableOp$encoder_layer1/MatMul/ReadVariableOp2N
%encoder_layer2/BiasAdd/ReadVariableOp%encoder_layer2/BiasAdd/ReadVariableOp2L
$encoder_layer2/MatMul/ReadVariableOp$encoder_layer2/MatMul/ReadVariableOp2h
2encoder_layer3/AssignMovingAvg/AssignSubVariableOp2encoder_layer3/AssignMovingAvg/AssignSubVariableOp2^
-encoder_layer3/AssignMovingAvg/ReadVariableOp-encoder_layer3/AssignMovingAvg/ReadVariableOp2l
4encoder_layer3/AssignMovingAvg_1/AssignSubVariableOp4encoder_layer3/AssignMovingAvg_1/AssignSubVariableOp2b
/encoder_layer3/AssignMovingAvg_1/ReadVariableOp/encoder_layer3/AssignMovingAvg_1/ReadVariableOp2R
'encoder_layer3/batchnorm/ReadVariableOp'encoder_layer3/batchnorm/ReadVariableOp2Z
+encoder_layer3/batchnorm/mul/ReadVariableOp+encoder_layer3/batchnorm/mul/ReadVariableOp2N
%encoder_layer5/BiasAdd/ReadVariableOp%encoder_layer5/BiasAdd/ReadVariableOp2L
$encoder_layer5/MatMul/ReadVariableOp$encoder_layer5/MatMul/ReadVariableOp2N
%encoder_layer6/BiasAdd/ReadVariableOp%encoder_layer6/BiasAdd/ReadVariableOp2L
$encoder_layer6/MatMul/ReadVariableOp$encoder_layer6/MatMul/ReadVariableOp2N
%encoder_layer7/BiasAdd/ReadVariableOp%encoder_layer7/BiasAdd/ReadVariableOp2L
$encoder_layer7/MatMul/ReadVariableOp$encoder_layer7/MatMul/ReadVariableOp2N
%encoder_layer8/BiasAdd/ReadVariableOp%encoder_layer8/BiasAdd/ReadVariableOp2L
$encoder_layer8/MatMul/ReadVariableOp$encoder_layer8/MatMul/ReadVariableOp2h
2encoder_layer9/AssignMovingAvg/AssignSubVariableOp2encoder_layer9/AssignMovingAvg/AssignSubVariableOp2^
-encoder_layer9/AssignMovingAvg/ReadVariableOp-encoder_layer9/AssignMovingAvg/ReadVariableOp2l
4encoder_layer9/AssignMovingAvg_1/AssignSubVariableOp4encoder_layer9/AssignMovingAvg_1/AssignSubVariableOp2b
/encoder_layer9/AssignMovingAvg_1/ReadVariableOp/encoder_layer9/AssignMovingAvg_1/ReadVariableOp2R
'encoder_layer9/batchnorm/ReadVariableOp'encoder_layer9/batchnorm/ReadVariableOp2Z
+encoder_layer9/batchnorm/mul/ReadVariableOp+encoder_layer9/batchnorm/mul/ReadVariableOp2N
%output_encoder/BiasAdd/ReadVariableOp%output_encoder/BiasAdd/ReadVariableOp2L
$output_encoder/MatMul/ReadVariableOp$output_encoder/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
K__inference_decoder_layer7_layer_call_and_return_conditional_losses_8020851

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_8021648
input_autoencoder
encoder_8021557
encoder_8021559
encoder_8021561
encoder_8021563
encoder_8021565
encoder_8021567
encoder_8021569
encoder_8021571
encoder_8021573
encoder_8021575
encoder_8021577
encoder_8021579
encoder_8021581
encoder_8021583
encoder_8021585
encoder_8021587
encoder_8021589
encoder_8021591
encoder_8021593
encoder_8021595
encoder_8021597
encoder_8021599
decoder_8021602
decoder_8021604
decoder_8021606
decoder_8021608
decoder_8021610
decoder_8021612
decoder_8021614
decoder_8021616
decoder_8021618
decoder_8021620
decoder_8021622
decoder_8021624
decoder_8021626
decoder_8021628
decoder_8021630
decoder_8021632
decoder_8021634
decoder_8021636
decoder_8021638
decoder_8021640
decoder_8021642
decoder_8021644
identity??Decoder/StatefulPartitionedCall?Encoder/StatefulPartitionedCall?
Encoder/StatefulPartitionedCallStatefulPartitionedCallinput_autoencoderencoder_8021557encoder_8021559encoder_8021561encoder_8021563encoder_8021565encoder_8021567encoder_8021569encoder_8021571encoder_8021573encoder_8021575encoder_8021577encoder_8021579encoder_8021581encoder_8021583encoder_8021585encoder_8021587encoder_8021589encoder_8021591encoder_8021593encoder_8021595encoder_8021597encoder_8021599*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_80203362!
Encoder/StatefulPartitionedCall?
Decoder/StatefulPartitionedCallStatefulPartitionedCall(Encoder/StatefulPartitionedCall:output:0decoder_8021602decoder_8021604decoder_8021606decoder_8021608decoder_8021610decoder_8021612decoder_8021614decoder_8021616decoder_8021618decoder_8021620decoder_8021622decoder_8021624decoder_8021626decoder_8021628decoder_8021630decoder_8021632decoder_8021634decoder_8021636decoder_8021638decoder_8021640decoder_8021642decoder_8021644*"
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_80212162!
Decoder/StatefulPartitionedCall?
IdentityIdentity(Decoder/StatefulPartitionedCall:output:0 ^Decoder/StatefulPartitionedCall ^Encoder/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????::::::::::::::::::::::::::::::::::::::::::::2B
Decoder/StatefulPartitionedCallDecoder/StatefulPartitionedCall2B
Encoder/StatefulPartitionedCallEncoder/StatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameinput_autoencoder
?=
?
D__inference_Encoder_layer_call_and_return_conditional_losses_8020166
input_encoder
encoder_layer1_8020110
encoder_layer1_8020112
encoder_layer2_8020115
encoder_layer2_8020117
encoder_layer3_8020120
encoder_layer3_8020122
encoder_layer3_8020124
encoder_layer3_8020126
encoder_layer5_8020130
encoder_layer5_8020132
encoder_layer6_8020135
encoder_layer6_8020137
encoder_layer7_8020140
encoder_layer7_8020142
encoder_layer8_8020145
encoder_layer8_8020147
encoder_layer9_8020150
encoder_layer9_8020152
encoder_layer9_8020154
encoder_layer9_8020156
output_encoder_8020160
output_encoder_8020162
identity??&encoder_layer1/StatefulPartitionedCall?&encoder_layer2/StatefulPartitionedCall?&encoder_layer3/StatefulPartitionedCall?&encoder_layer5/StatefulPartitionedCall?&encoder_layer6/StatefulPartitionedCall?&encoder_layer7/StatefulPartitionedCall?&encoder_layer8/StatefulPartitionedCall?&encoder_layer9/StatefulPartitionedCall?&output_encoder/StatefulPartitionedCall?
&encoder_layer1/StatefulPartitionedCallStatefulPartitionedCallinput_encoderencoder_layer1_8020110encoder_layer1_8020112*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_80197982(
&encoder_layer1/StatefulPartitionedCall?
&encoder_layer2/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer1/StatefulPartitionedCall:output:0encoder_layer2_8020115encoder_layer2_8020117*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer2_layer_call_and_return_conditional_losses_80198252(
&encoder_layer2/StatefulPartitionedCall?
&encoder_layer3/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer2/StatefulPartitionedCall:output:0encoder_layer3_8020120encoder_layer3_8020122encoder_layer3_8020124encoder_layer3_8020126*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer3_layer_call_and_return_conditional_losses_80196322(
&encoder_layer3/StatefulPartitionedCall?
encoder_layer4/PartitionedCallPartitionedCall/encoder_layer3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer4_layer_call_and_return_conditional_losses_80198932 
encoder_layer4/PartitionedCall?
&encoder_layer5/StatefulPartitionedCallStatefulPartitionedCall'encoder_layer4/PartitionedCall:output:0encoder_layer5_8020130encoder_layer5_8020132*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer5_layer_call_and_return_conditional_losses_80199172(
&encoder_layer5/StatefulPartitionedCall?
&encoder_layer6/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer5/StatefulPartitionedCall:output:0encoder_layer6_8020135encoder_layer6_8020137*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer6_layer_call_and_return_conditional_losses_80199442(
&encoder_layer6/StatefulPartitionedCall?
&encoder_layer7/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer6/StatefulPartitionedCall:output:0encoder_layer7_8020140encoder_layer7_8020142*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer7_layer_call_and_return_conditional_losses_80199712(
&encoder_layer7/StatefulPartitionedCall?
&encoder_layer8/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer7/StatefulPartitionedCall:output:0encoder_layer8_8020145encoder_layer8_8020147*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer8_layer_call_and_return_conditional_losses_80199982(
&encoder_layer8/StatefulPartitionedCall?
&encoder_layer9/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer8/StatefulPartitionedCall:output:0encoder_layer9_8020150encoder_layer9_8020152encoder_layer9_8020154encoder_layer9_8020156*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer9_layer_call_and_return_conditional_losses_80197722(
&encoder_layer9/StatefulPartitionedCall?
encoder_layer10/PartitionedCallPartitionedCall/encoder_layer9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_encoder_layer10_layer_call_and_return_conditional_losses_80200662!
encoder_layer10/PartitionedCall?
&output_encoder/StatefulPartitionedCallStatefulPartitionedCall(encoder_layer10/PartitionedCall:output:0output_encoder_8020160output_encoder_8020162*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_output_encoder_layer_call_and_return_conditional_losses_80200902(
&output_encoder/StatefulPartitionedCall?
IdentityIdentity/output_encoder/StatefulPartitionedCall:output:0'^encoder_layer1/StatefulPartitionedCall'^encoder_layer2/StatefulPartitionedCall'^encoder_layer3/StatefulPartitionedCall'^encoder_layer5/StatefulPartitionedCall'^encoder_layer6/StatefulPartitionedCall'^encoder_layer7/StatefulPartitionedCall'^encoder_layer8/StatefulPartitionedCall'^encoder_layer9/StatefulPartitionedCall'^output_encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2P
&encoder_layer1/StatefulPartitionedCall&encoder_layer1/StatefulPartitionedCall2P
&encoder_layer2/StatefulPartitionedCall&encoder_layer2/StatefulPartitionedCall2P
&encoder_layer3/StatefulPartitionedCall&encoder_layer3/StatefulPartitionedCall2P
&encoder_layer5/StatefulPartitionedCall&encoder_layer5/StatefulPartitionedCall2P
&encoder_layer6/StatefulPartitionedCall&encoder_layer6/StatefulPartitionedCall2P
&encoder_layer7/StatefulPartitionedCall&encoder_layer7/StatefulPartitionedCall2P
&encoder_layer8/StatefulPartitionedCall&encoder_layer8/StatefulPartitionedCall2P
&encoder_layer9/StatefulPartitionedCall&encoder_layer9/StatefulPartitionedCall2P
&output_encoder/StatefulPartitionedCall&output_encoder/StatefulPartitionedCall:W S
(
_output_shapes
:??????????
'
_user_specified_nameinput_encoder
?
?
-__inference_AutoEncoder_layer_call_fn_8022651

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*F
_read_only_resource_inputs(
&$	
 !"#$%&)*+,*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_80217452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_8021932

inputs
encoder_8021841
encoder_8021843
encoder_8021845
encoder_8021847
encoder_8021849
encoder_8021851
encoder_8021853
encoder_8021855
encoder_8021857
encoder_8021859
encoder_8021861
encoder_8021863
encoder_8021865
encoder_8021867
encoder_8021869
encoder_8021871
encoder_8021873
encoder_8021875
encoder_8021877
encoder_8021879
encoder_8021881
encoder_8021883
decoder_8021886
decoder_8021888
decoder_8021890
decoder_8021892
decoder_8021894
decoder_8021896
decoder_8021898
decoder_8021900
decoder_8021902
decoder_8021904
decoder_8021906
decoder_8021908
decoder_8021910
decoder_8021912
decoder_8021914
decoder_8021916
decoder_8021918
decoder_8021920
decoder_8021922
decoder_8021924
decoder_8021926
decoder_8021928
identity??Decoder/StatefulPartitionedCall?Encoder/StatefulPartitionedCall?
Encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_8021841encoder_8021843encoder_8021845encoder_8021847encoder_8021849encoder_8021851encoder_8021853encoder_8021855encoder_8021857encoder_8021859encoder_8021861encoder_8021863encoder_8021865encoder_8021867encoder_8021869encoder_8021871encoder_8021873encoder_8021875encoder_8021877encoder_8021879encoder_8021881encoder_8021883*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_80203362!
Encoder/StatefulPartitionedCall?
Decoder/StatefulPartitionedCallStatefulPartitionedCall(Encoder/StatefulPartitionedCall:output:0decoder_8021886decoder_8021888decoder_8021890decoder_8021892decoder_8021894decoder_8021896decoder_8021898decoder_8021900decoder_8021902decoder_8021904decoder_8021906decoder_8021908decoder_8021910decoder_8021912decoder_8021914decoder_8021916decoder_8021918decoder_8021920decoder_8021922decoder_8021924decoder_8021926decoder_8021928*"
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_80212162!
Decoder/StatefulPartitionedCall?
IdentityIdentity(Decoder/StatefulPartitionedCall:output:0 ^Decoder/StatefulPartitionedCall ^Encoder/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????::::::::::::::::::::::::::::::::::::::::::::2B
Decoder/StatefulPartitionedCallDecoder/StatefulPartitionedCall2B
Encoder/StatefulPartitionedCallEncoder/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_encoder_layer9_layer_call_fn_8023691

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer9_layer_call_and_return_conditional_losses_80197722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
K__inference_encoder_layer9_layer_call_and_return_conditional_losses_8019772

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
j
K__inference_encoder_layer4_layer_call_and_return_conditional_losses_8023514

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?0
?
K__inference_encoder_layer9_layer_call_and_return_conditional_losses_8019739

inputs
assignmovingavg_8019714
assignmovingavg_1_8019720)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8019714*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_8019714*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8019714*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8019714*
_output_shapes
:@2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_8019714AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8019714*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8019720*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_8019720*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8019720*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8019720*
_output_shapes
:@2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_8019720AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8019720*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
K__inference_decoder_layer6_layer_call_and_return_conditional_losses_8023918

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_decoder_layer6_layer_call_fn_8023927

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer6_layer_call_and_return_conditional_losses_80208242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_Encoder_layer_call_fn_8023062

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_80203362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
K__inference_decoder_layer4_layer_call_and_return_conditional_losses_8023877

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
k
L__inference_decoder_layer10_layer_call_and_return_conditional_losses_8020941

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_Decoder_layer_call_fn_8021263
input_decoder
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_decoderunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_80212162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????
::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????

'
_user_specified_nameinput_decoder
?
?
0__inference_encoder_layer3_layer_call_fn_8023502

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer3_layer_call_and_return_conditional_losses_80196322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
0__inference_encoder_layer1_layer_call_fn_8023400

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_80197982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_decoder_layer3_layer_call_and_return_conditional_losses_8020512

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
j
L__inference_decoder_layer10_layer_call_and_return_conditional_losses_8020946

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
j
L__inference_decoder_layer10_layer_call_and_return_conditional_losses_8024066

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
j
1__inference_encoder_layer10_layer_call_fn_8023713

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_encoder_layer10_layer_call_and_return_conditional_losses_80200612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
K__inference_encoder_layer2_layer_call_and_return_conditional_losses_8023411

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
k
L__inference_encoder_layer10_layer_call_and_return_conditional_losses_8023703

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?F
#__inference__traced_restore_8024879
file_prefix
assignvariableop_adam_iter"
assignvariableop_1_adam_beta_1"
assignvariableop_2_adam_beta_2!
assignvariableop_3_adam_decay)
%assignvariableop_4_adam_learning_rate,
(assignvariableop_5_encoder_layer1_kernel*
&assignvariableop_6_encoder_layer1_bias,
(assignvariableop_7_encoder_layer2_kernel*
&assignvariableop_8_encoder_layer2_bias+
'assignvariableop_9_encoder_layer3_gamma+
'assignvariableop_10_encoder_layer3_beta2
.assignvariableop_11_encoder_layer3_moving_mean6
2assignvariableop_12_encoder_layer3_moving_variance-
)assignvariableop_13_encoder_layer5_kernel+
'assignvariableop_14_encoder_layer5_bias-
)assignvariableop_15_encoder_layer6_kernel+
'assignvariableop_16_encoder_layer6_bias-
)assignvariableop_17_encoder_layer7_kernel+
'assignvariableop_18_encoder_layer7_bias-
)assignvariableop_19_encoder_layer8_kernel+
'assignvariableop_20_encoder_layer8_bias,
(assignvariableop_21_encoder_layer9_gamma+
'assignvariableop_22_encoder_layer9_beta2
.assignvariableop_23_encoder_layer9_moving_mean6
2assignvariableop_24_encoder_layer9_moving_variance-
)assignvariableop_25_output_encoder_kernel+
'assignvariableop_26_output_encoder_bias-
)assignvariableop_27_decoder_layer1_kernel+
'assignvariableop_28_decoder_layer1_bias-
)assignvariableop_29_decoder_layer2_kernel+
'assignvariableop_30_decoder_layer2_bias,
(assignvariableop_31_decoder_layer3_gamma+
'assignvariableop_32_decoder_layer3_beta2
.assignvariableop_33_decoder_layer3_moving_mean6
2assignvariableop_34_decoder_layer3_moving_variance-
)assignvariableop_35_decoder_layer5_kernel+
'assignvariableop_36_decoder_layer5_bias-
)assignvariableop_37_decoder_layer6_kernel+
'assignvariableop_38_decoder_layer6_bias-
)assignvariableop_39_decoder_layer7_kernel+
'assignvariableop_40_decoder_layer7_bias-
)assignvariableop_41_decoder_layer8_kernel+
'assignvariableop_42_decoder_layer8_bias,
(assignvariableop_43_decoder_layer9_gamma+
'assignvariableop_44_decoder_layer9_beta2
.assignvariableop_45_decoder_layer9_moving_mean6
2assignvariableop_46_decoder_layer9_moving_variance+
'assignvariableop_47_output_layer_kernel)
%assignvariableop_48_output_layer_bias
assignvariableop_49_total
assignvariableop_50_count
assignvariableop_51_total_1
assignvariableop_52_count_14
0assignvariableop_53_adam_encoder_layer1_kernel_m2
.assignvariableop_54_adam_encoder_layer1_bias_m4
0assignvariableop_55_adam_encoder_layer2_kernel_m2
.assignvariableop_56_adam_encoder_layer2_bias_m3
/assignvariableop_57_adam_encoder_layer3_gamma_m2
.assignvariableop_58_adam_encoder_layer3_beta_m4
0assignvariableop_59_adam_encoder_layer5_kernel_m2
.assignvariableop_60_adam_encoder_layer5_bias_m4
0assignvariableop_61_adam_encoder_layer6_kernel_m2
.assignvariableop_62_adam_encoder_layer6_bias_m4
0assignvariableop_63_adam_encoder_layer7_kernel_m2
.assignvariableop_64_adam_encoder_layer7_bias_m4
0assignvariableop_65_adam_encoder_layer8_kernel_m2
.assignvariableop_66_adam_encoder_layer8_bias_m3
/assignvariableop_67_adam_encoder_layer9_gamma_m2
.assignvariableop_68_adam_encoder_layer9_beta_m4
0assignvariableop_69_adam_output_encoder_kernel_m2
.assignvariableop_70_adam_output_encoder_bias_m4
0assignvariableop_71_adam_decoder_layer1_kernel_m2
.assignvariableop_72_adam_decoder_layer1_bias_m4
0assignvariableop_73_adam_decoder_layer2_kernel_m2
.assignvariableop_74_adam_decoder_layer2_bias_m3
/assignvariableop_75_adam_decoder_layer3_gamma_m2
.assignvariableop_76_adam_decoder_layer3_beta_m4
0assignvariableop_77_adam_decoder_layer5_kernel_m2
.assignvariableop_78_adam_decoder_layer5_bias_m4
0assignvariableop_79_adam_decoder_layer6_kernel_m2
.assignvariableop_80_adam_decoder_layer6_bias_m4
0assignvariableop_81_adam_decoder_layer7_kernel_m2
.assignvariableop_82_adam_decoder_layer7_bias_m4
0assignvariableop_83_adam_decoder_layer8_kernel_m2
.assignvariableop_84_adam_decoder_layer8_bias_m3
/assignvariableop_85_adam_decoder_layer9_gamma_m2
.assignvariableop_86_adam_decoder_layer9_beta_m2
.assignvariableop_87_adam_output_layer_kernel_m0
,assignvariableop_88_adam_output_layer_bias_m4
0assignvariableop_89_adam_encoder_layer1_kernel_v2
.assignvariableop_90_adam_encoder_layer1_bias_v4
0assignvariableop_91_adam_encoder_layer2_kernel_v2
.assignvariableop_92_adam_encoder_layer2_bias_v3
/assignvariableop_93_adam_encoder_layer3_gamma_v2
.assignvariableop_94_adam_encoder_layer3_beta_v4
0assignvariableop_95_adam_encoder_layer5_kernel_v2
.assignvariableop_96_adam_encoder_layer5_bias_v4
0assignvariableop_97_adam_encoder_layer6_kernel_v2
.assignvariableop_98_adam_encoder_layer6_bias_v4
0assignvariableop_99_adam_encoder_layer7_kernel_v3
/assignvariableop_100_adam_encoder_layer7_bias_v5
1assignvariableop_101_adam_encoder_layer8_kernel_v3
/assignvariableop_102_adam_encoder_layer8_bias_v4
0assignvariableop_103_adam_encoder_layer9_gamma_v3
/assignvariableop_104_adam_encoder_layer9_beta_v5
1assignvariableop_105_adam_output_encoder_kernel_v3
/assignvariableop_106_adam_output_encoder_bias_v5
1assignvariableop_107_adam_decoder_layer1_kernel_v3
/assignvariableop_108_adam_decoder_layer1_bias_v5
1assignvariableop_109_adam_decoder_layer2_kernel_v3
/assignvariableop_110_adam_decoder_layer2_bias_v4
0assignvariableop_111_adam_decoder_layer3_gamma_v3
/assignvariableop_112_adam_decoder_layer3_beta_v5
1assignvariableop_113_adam_decoder_layer5_kernel_v3
/assignvariableop_114_adam_decoder_layer5_bias_v5
1assignvariableop_115_adam_decoder_layer6_kernel_v3
/assignvariableop_116_adam_decoder_layer6_bias_v5
1assignvariableop_117_adam_decoder_layer7_kernel_v3
/assignvariableop_118_adam_decoder_layer7_bias_v5
1assignvariableop_119_adam_decoder_layer8_kernel_v3
/assignvariableop_120_adam_decoder_layer8_bias_v4
0assignvariableop_121_adam_decoder_layer9_gamma_v3
/assignvariableop_122_adam_decoder_layer9_beta_v3
/assignvariableop_123_adam_output_layer_kernel_v1
-assignvariableop_124_adam_output_layer_bias_v
identity_126??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_113?AssignVariableOp_114?AssignVariableOp_115?AssignVariableOp_116?AssignVariableOp_117?AssignVariableOp_118?AssignVariableOp_119?AssignVariableOp_12?AssignVariableOp_120?AssignVariableOp_121?AssignVariableOp_122?AssignVariableOp_123?AssignVariableOp_124?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:~*
dtype0*?8
value?8B?8~B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/42/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/43/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/42/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/43/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:~*
dtype0*?
value?B?~B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes?
?2~	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp(assignvariableop_5_encoder_layer1_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp&assignvariableop_6_encoder_layer1_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp(assignvariableop_7_encoder_layer2_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp&assignvariableop_8_encoder_layer2_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp'assignvariableop_9_encoder_layer3_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp'assignvariableop_10_encoder_layer3_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp.assignvariableop_11_encoder_layer3_moving_meanIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp2assignvariableop_12_encoder_layer3_moving_varianceIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp)assignvariableop_13_encoder_layer5_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp'assignvariableop_14_encoder_layer5_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp)assignvariableop_15_encoder_layer6_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp'assignvariableop_16_encoder_layer6_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_encoder_layer7_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp'assignvariableop_18_encoder_layer7_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_encoder_layer8_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_encoder_layer8_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp(assignvariableop_21_encoder_layer9_gammaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_encoder_layer9_betaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp.assignvariableop_23_encoder_layer9_moving_meanIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp2assignvariableop_24_encoder_layer9_moving_varianceIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_output_encoder_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_output_encoder_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_decoder_layer1_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp'assignvariableop_28_decoder_layer1_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_decoder_layer2_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp'assignvariableop_30_decoder_layer2_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp(assignvariableop_31_decoder_layer3_gammaIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp'assignvariableop_32_decoder_layer3_betaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp.assignvariableop_33_decoder_layer3_moving_meanIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp2assignvariableop_34_decoder_layer3_moving_varianceIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_decoder_layer5_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp'assignvariableop_36_decoder_layer5_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_decoder_layer6_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp'assignvariableop_38_decoder_layer6_biasIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp)assignvariableop_39_decoder_layer7_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp'assignvariableop_40_decoder_layer7_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp)assignvariableop_41_decoder_layer8_kernelIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp'assignvariableop_42_decoder_layer8_biasIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp(assignvariableop_43_decoder_layer9_gammaIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp'assignvariableop_44_decoder_layer9_betaIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp.assignvariableop_45_decoder_layer9_moving_meanIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp2assignvariableop_46_decoder_layer9_moving_varianceIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp'assignvariableop_47_output_layer_kernelIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp%assignvariableop_48_output_layer_biasIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOpassignvariableop_49_totalIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOpassignvariableop_50_countIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOpassignvariableop_51_total_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOpassignvariableop_52_count_1Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp0assignvariableop_53_adam_encoder_layer1_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp.assignvariableop_54_adam_encoder_layer1_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp0assignvariableop_55_adam_encoder_layer2_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp.assignvariableop_56_adam_encoder_layer2_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp/assignvariableop_57_adam_encoder_layer3_gamma_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp.assignvariableop_58_adam_encoder_layer3_beta_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp0assignvariableop_59_adam_encoder_layer5_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp.assignvariableop_60_adam_encoder_layer5_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp0assignvariableop_61_adam_encoder_layer6_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp.assignvariableop_62_adam_encoder_layer6_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp0assignvariableop_63_adam_encoder_layer7_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp.assignvariableop_64_adam_encoder_layer7_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp0assignvariableop_65_adam_encoder_layer8_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp.assignvariableop_66_adam_encoder_layer8_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp/assignvariableop_67_adam_encoder_layer9_gamma_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp.assignvariableop_68_adam_encoder_layer9_beta_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp0assignvariableop_69_adam_output_encoder_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp.assignvariableop_70_adam_output_encoder_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp0assignvariableop_71_adam_decoder_layer1_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp.assignvariableop_72_adam_decoder_layer1_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp0assignvariableop_73_adam_decoder_layer2_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp.assignvariableop_74_adam_decoder_layer2_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp/assignvariableop_75_adam_decoder_layer3_gamma_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp.assignvariableop_76_adam_decoder_layer3_beta_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp0assignvariableop_77_adam_decoder_layer5_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp.assignvariableop_78_adam_decoder_layer5_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp0assignvariableop_79_adam_decoder_layer6_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp.assignvariableop_80_adam_decoder_layer6_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp0assignvariableop_81_adam_decoder_layer7_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp.assignvariableop_82_adam_decoder_layer7_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp0assignvariableop_83_adam_decoder_layer8_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp.assignvariableop_84_adam_decoder_layer8_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85?
AssignVariableOp_85AssignVariableOp/assignvariableop_85_adam_decoder_layer9_gamma_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86?
AssignVariableOp_86AssignVariableOp.assignvariableop_86_adam_decoder_layer9_beta_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87?
AssignVariableOp_87AssignVariableOp.assignvariableop_87_adam_output_layer_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88?
AssignVariableOp_88AssignVariableOp,assignvariableop_88_adam_output_layer_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89?
AssignVariableOp_89AssignVariableOp0assignvariableop_89_adam_encoder_layer1_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90?
AssignVariableOp_90AssignVariableOp.assignvariableop_90_adam_encoder_layer1_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91?
AssignVariableOp_91AssignVariableOp0assignvariableop_91_adam_encoder_layer2_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92?
AssignVariableOp_92AssignVariableOp.assignvariableop_92_adam_encoder_layer2_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93?
AssignVariableOp_93AssignVariableOp/assignvariableop_93_adam_encoder_layer3_gamma_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94?
AssignVariableOp_94AssignVariableOp.assignvariableop_94_adam_encoder_layer3_beta_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95?
AssignVariableOp_95AssignVariableOp0assignvariableop_95_adam_encoder_layer5_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96?
AssignVariableOp_96AssignVariableOp.assignvariableop_96_adam_encoder_layer5_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97?
AssignVariableOp_97AssignVariableOp0assignvariableop_97_adam_encoder_layer6_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98?
AssignVariableOp_98AssignVariableOp.assignvariableop_98_adam_encoder_layer6_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99?
AssignVariableOp_99AssignVariableOp0assignvariableop_99_adam_encoder_layer7_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100?
AssignVariableOp_100AssignVariableOp/assignvariableop_100_adam_encoder_layer7_bias_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101?
AssignVariableOp_101AssignVariableOp1assignvariableop_101_adam_encoder_layer8_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102?
AssignVariableOp_102AssignVariableOp/assignvariableop_102_adam_encoder_layer8_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103?
AssignVariableOp_103AssignVariableOp0assignvariableop_103_adam_encoder_layer9_gamma_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104?
AssignVariableOp_104AssignVariableOp/assignvariableop_104_adam_encoder_layer9_beta_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105?
AssignVariableOp_105AssignVariableOp1assignvariableop_105_adam_output_encoder_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106?
AssignVariableOp_106AssignVariableOp/assignvariableop_106_adam_output_encoder_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107?
AssignVariableOp_107AssignVariableOp1assignvariableop_107_adam_decoder_layer1_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108?
AssignVariableOp_108AssignVariableOp/assignvariableop_108_adam_decoder_layer1_bias_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109?
AssignVariableOp_109AssignVariableOp1assignvariableop_109_adam_decoder_layer2_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110?
AssignVariableOp_110AssignVariableOp/assignvariableop_110_adam_decoder_layer2_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111?
AssignVariableOp_111AssignVariableOp0assignvariableop_111_adam_decoder_layer3_gamma_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112?
AssignVariableOp_112AssignVariableOp/assignvariableop_112_adam_decoder_layer3_beta_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113?
AssignVariableOp_113AssignVariableOp1assignvariableop_113_adam_decoder_layer5_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114?
AssignVariableOp_114AssignVariableOp/assignvariableop_114_adam_decoder_layer5_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115?
AssignVariableOp_115AssignVariableOp1assignvariableop_115_adam_decoder_layer6_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116?
AssignVariableOp_116AssignVariableOp/assignvariableop_116_adam_decoder_layer6_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117?
AssignVariableOp_117AssignVariableOp1assignvariableop_117_adam_decoder_layer7_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_117q
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:2
Identity_118?
AssignVariableOp_118AssignVariableOp/assignvariableop_118_adam_decoder_layer7_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_118q
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:2
Identity_119?
AssignVariableOp_119AssignVariableOp1assignvariableop_119_adam_decoder_layer8_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119q
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:2
Identity_120?
AssignVariableOp_120AssignVariableOp/assignvariableop_120_adam_decoder_layer8_bias_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_120q
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:2
Identity_121?
AssignVariableOp_121AssignVariableOp0assignvariableop_121_adam_decoder_layer9_gamma_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_121q
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:2
Identity_122?
AssignVariableOp_122AssignVariableOp/assignvariableop_122_adam_decoder_layer9_beta_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_122q
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:2
Identity_123?
AssignVariableOp_123AssignVariableOp/assignvariableop_123_adam_output_layer_kernel_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_123q
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:2
Identity_124?
AssignVariableOp_124AssignVariableOp-assignvariableop_124_adam_output_layer_bias_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1249
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_125Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_125?
Identity_126IdentityIdentity_125:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_126"%
identity_126Identity_126:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_8021554
input_autoencoder
encoder_8021365
encoder_8021367
encoder_8021369
encoder_8021371
encoder_8021373
encoder_8021375
encoder_8021377
encoder_8021379
encoder_8021381
encoder_8021383
encoder_8021385
encoder_8021387
encoder_8021389
encoder_8021391
encoder_8021393
encoder_8021395
encoder_8021397
encoder_8021399
encoder_8021401
encoder_8021403
encoder_8021405
encoder_8021407
decoder_8021508
decoder_8021510
decoder_8021512
decoder_8021514
decoder_8021516
decoder_8021518
decoder_8021520
decoder_8021522
decoder_8021524
decoder_8021526
decoder_8021528
decoder_8021530
decoder_8021532
decoder_8021534
decoder_8021536
decoder_8021538
decoder_8021540
decoder_8021542
decoder_8021544
decoder_8021546
decoder_8021548
decoder_8021550
identity??Decoder/StatefulPartitionedCall?Encoder/StatefulPartitionedCall?
Encoder/StatefulPartitionedCallStatefulPartitionedCallinput_autoencoderencoder_8021365encoder_8021367encoder_8021369encoder_8021371encoder_8021373encoder_8021375encoder_8021377encoder_8021379encoder_8021381encoder_8021383encoder_8021385encoder_8021387encoder_8021389encoder_8021391encoder_8021393encoder_8021395encoder_8021397encoder_8021399encoder_8021401encoder_8021403encoder_8021405encoder_8021407*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_80202282!
Encoder/StatefulPartitionedCall?
Decoder/StatefulPartitionedCallStatefulPartitionedCall(Encoder/StatefulPartitionedCall:output:0decoder_8021508decoder_8021510decoder_8021512decoder_8021514decoder_8021516decoder_8021518decoder_8021520decoder_8021522decoder_8021524decoder_8021526decoder_8021528decoder_8021530decoder_8021532decoder_8021534decoder_8021536decoder_8021538decoder_8021540decoder_8021542decoder_8021544decoder_8021546decoder_8021548decoder_8021550*"
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_80211082!
Decoder/StatefulPartitionedCall?
IdentityIdentity(Decoder/StatefulPartitionedCall:output:0 ^Decoder/StatefulPartitionedCall ^Encoder/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????::::::::::::::::::::::::::::::::::::::::::::2B
Decoder/StatefulPartitionedCallDecoder/StatefulPartitionedCall2B
Encoder/StatefulPartitionedCallEncoder/StatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameinput_autoencoder
?
?
-__inference_AutoEncoder_layer_call_fn_8022744

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_80219322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_encoder_layer5_layer_call_fn_8023549

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer5_layer_call_and_return_conditional_losses_80199172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
K__inference_encoder_layer7_layer_call_and_return_conditional_losses_8023580

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_encoder_layer7_layer_call_fn_8023589

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer7_layer_call_and_return_conditional_losses_80199712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
K__inference_decoder_layer4_layer_call_and_return_conditional_losses_8020773

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?*
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_8022388

inputs9
5encoder_encoder_layer1_matmul_readvariableop_resource:
6encoder_encoder_layer1_biasadd_readvariableop_resource9
5encoder_encoder_layer2_matmul_readvariableop_resource:
6encoder_encoder_layer2_biasadd_readvariableop_resource2
.encoder_encoder_layer3_assignmovingavg_80221514
0encoder_encoder_layer3_assignmovingavg_1_8022157@
<encoder_encoder_layer3_batchnorm_mul_readvariableop_resource<
8encoder_encoder_layer3_batchnorm_readvariableop_resource9
5encoder_encoder_layer5_matmul_readvariableop_resource:
6encoder_encoder_layer5_biasadd_readvariableop_resource9
5encoder_encoder_layer6_matmul_readvariableop_resource:
6encoder_encoder_layer6_biasadd_readvariableop_resource9
5encoder_encoder_layer7_matmul_readvariableop_resource:
6encoder_encoder_layer7_biasadd_readvariableop_resource9
5encoder_encoder_layer8_matmul_readvariableop_resource:
6encoder_encoder_layer8_biasadd_readvariableop_resource2
.encoder_encoder_layer9_assignmovingavg_80222194
0encoder_encoder_layer9_assignmovingavg_1_8022225@
<encoder_encoder_layer9_batchnorm_mul_readvariableop_resource<
8encoder_encoder_layer9_batchnorm_readvariableop_resource9
5encoder_output_encoder_matmul_readvariableop_resource:
6encoder_output_encoder_biasadd_readvariableop_resource9
5decoder_decoder_layer1_matmul_readvariableop_resource:
6decoder_decoder_layer1_biasadd_readvariableop_resource9
5decoder_decoder_layer2_matmul_readvariableop_resource:
6decoder_decoder_layer2_biasadd_readvariableop_resource2
.decoder_decoder_layer3_assignmovingavg_80222804
0decoder_decoder_layer3_assignmovingavg_1_8022286@
<decoder_decoder_layer3_batchnorm_mul_readvariableop_resource<
8decoder_decoder_layer3_batchnorm_readvariableop_resource9
5decoder_decoder_layer5_matmul_readvariableop_resource:
6decoder_decoder_layer5_biasadd_readvariableop_resource9
5decoder_decoder_layer6_matmul_readvariableop_resource:
6decoder_decoder_layer6_biasadd_readvariableop_resource9
5decoder_decoder_layer7_matmul_readvariableop_resource:
6decoder_decoder_layer7_biasadd_readvariableop_resource9
5decoder_decoder_layer8_matmul_readvariableop_resource:
6decoder_decoder_layer8_biasadd_readvariableop_resource2
.decoder_decoder_layer9_assignmovingavg_80223484
0decoder_decoder_layer9_assignmovingavg_1_8022354@
<decoder_decoder_layer9_batchnorm_mul_readvariableop_resource<
8decoder_decoder_layer9_batchnorm_readvariableop_resource7
3decoder_output_layer_matmul_readvariableop_resource8
4decoder_output_layer_biasadd_readvariableop_resource
identity??-Decoder/decoder_layer1/BiasAdd/ReadVariableOp?,Decoder/decoder_layer1/MatMul/ReadVariableOp?-Decoder/decoder_layer2/BiasAdd/ReadVariableOp?,Decoder/decoder_layer2/MatMul/ReadVariableOp?:Decoder/decoder_layer3/AssignMovingAvg/AssignSubVariableOp?5Decoder/decoder_layer3/AssignMovingAvg/ReadVariableOp?<Decoder/decoder_layer3/AssignMovingAvg_1/AssignSubVariableOp?7Decoder/decoder_layer3/AssignMovingAvg_1/ReadVariableOp?/Decoder/decoder_layer3/batchnorm/ReadVariableOp?3Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp?-Decoder/decoder_layer5/BiasAdd/ReadVariableOp?,Decoder/decoder_layer5/MatMul/ReadVariableOp?-Decoder/decoder_layer6/BiasAdd/ReadVariableOp?,Decoder/decoder_layer6/MatMul/ReadVariableOp?-Decoder/decoder_layer7/BiasAdd/ReadVariableOp?,Decoder/decoder_layer7/MatMul/ReadVariableOp?-Decoder/decoder_layer8/BiasAdd/ReadVariableOp?,Decoder/decoder_layer8/MatMul/ReadVariableOp?:Decoder/decoder_layer9/AssignMovingAvg/AssignSubVariableOp?5Decoder/decoder_layer9/AssignMovingAvg/ReadVariableOp?<Decoder/decoder_layer9/AssignMovingAvg_1/AssignSubVariableOp?7Decoder/decoder_layer9/AssignMovingAvg_1/ReadVariableOp?/Decoder/decoder_layer9/batchnorm/ReadVariableOp?3Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp?+Decoder/output_layer/BiasAdd/ReadVariableOp?*Decoder/output_layer/MatMul/ReadVariableOp?-Encoder/encoder_layer1/BiasAdd/ReadVariableOp?,Encoder/encoder_layer1/MatMul/ReadVariableOp?-Encoder/encoder_layer2/BiasAdd/ReadVariableOp?,Encoder/encoder_layer2/MatMul/ReadVariableOp?:Encoder/encoder_layer3/AssignMovingAvg/AssignSubVariableOp?5Encoder/encoder_layer3/AssignMovingAvg/ReadVariableOp?<Encoder/encoder_layer3/AssignMovingAvg_1/AssignSubVariableOp?7Encoder/encoder_layer3/AssignMovingAvg_1/ReadVariableOp?/Encoder/encoder_layer3/batchnorm/ReadVariableOp?3Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp?-Encoder/encoder_layer5/BiasAdd/ReadVariableOp?,Encoder/encoder_layer5/MatMul/ReadVariableOp?-Encoder/encoder_layer6/BiasAdd/ReadVariableOp?,Encoder/encoder_layer6/MatMul/ReadVariableOp?-Encoder/encoder_layer7/BiasAdd/ReadVariableOp?,Encoder/encoder_layer7/MatMul/ReadVariableOp?-Encoder/encoder_layer8/BiasAdd/ReadVariableOp?,Encoder/encoder_layer8/MatMul/ReadVariableOp?:Encoder/encoder_layer9/AssignMovingAvg/AssignSubVariableOp?5Encoder/encoder_layer9/AssignMovingAvg/ReadVariableOp?<Encoder/encoder_layer9/AssignMovingAvg_1/AssignSubVariableOp?7Encoder/encoder_layer9/AssignMovingAvg_1/ReadVariableOp?/Encoder/encoder_layer9/batchnorm/ReadVariableOp?3Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp?-Encoder/output_encoder/BiasAdd/ReadVariableOp?,Encoder/output_encoder/MatMul/ReadVariableOp?
,Encoder/encoder_layer1/MatMul/ReadVariableOpReadVariableOp5encoder_encoder_layer1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Encoder/encoder_layer1/MatMul/ReadVariableOp?
Encoder/encoder_layer1/MatMulMatMulinputs4Encoder/encoder_layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer1/MatMul?
-Encoder/encoder_layer1/BiasAdd/ReadVariableOpReadVariableOp6encoder_encoder_layer1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Encoder/encoder_layer1/BiasAdd/ReadVariableOp?
Encoder/encoder_layer1/BiasAddBiasAdd'Encoder/encoder_layer1/MatMul:product:05Encoder/encoder_layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Encoder/encoder_layer1/BiasAdd?
Encoder/encoder_layer1/ReluRelu'Encoder/encoder_layer1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer1/Relu?
,Encoder/encoder_layer2/MatMul/ReadVariableOpReadVariableOp5encoder_encoder_layer2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02.
,Encoder/encoder_layer2/MatMul/ReadVariableOp?
Encoder/encoder_layer2/MatMulMatMul)Encoder/encoder_layer1/Relu:activations:04Encoder/encoder_layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Encoder/encoder_layer2/MatMul?
-Encoder/encoder_layer2/BiasAdd/ReadVariableOpReadVariableOp6encoder_encoder_layer2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-Encoder/encoder_layer2/BiasAdd/ReadVariableOp?
Encoder/encoder_layer2/BiasAddBiasAdd'Encoder/encoder_layer2/MatMul:product:05Encoder/encoder_layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
Encoder/encoder_layer2/BiasAdd?
Encoder/encoder_layer2/ReluRelu'Encoder/encoder_layer2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Encoder/encoder_layer2/Relu?
5Encoder/encoder_layer3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5Encoder/encoder_layer3/moments/mean/reduction_indices?
#Encoder/encoder_layer3/moments/meanMean)Encoder/encoder_layer2/Relu:activations:0>Encoder/encoder_layer3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2%
#Encoder/encoder_layer3/moments/mean?
+Encoder/encoder_layer3/moments/StopGradientStopGradient,Encoder/encoder_layer3/moments/mean:output:0*
T0*
_output_shapes

:@2-
+Encoder/encoder_layer3/moments/StopGradient?
0Encoder/encoder_layer3/moments/SquaredDifferenceSquaredDifference)Encoder/encoder_layer2/Relu:activations:04Encoder/encoder_layer3/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@22
0Encoder/encoder_layer3/moments/SquaredDifference?
9Encoder/encoder_layer3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9Encoder/encoder_layer3/moments/variance/reduction_indices?
'Encoder/encoder_layer3/moments/varianceMean4Encoder/encoder_layer3/moments/SquaredDifference:z:0BEncoder/encoder_layer3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2)
'Encoder/encoder_layer3/moments/variance?
&Encoder/encoder_layer3/moments/SqueezeSqueeze,Encoder/encoder_layer3/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2(
&Encoder/encoder_layer3/moments/Squeeze?
(Encoder/encoder_layer3/moments/Squeeze_1Squeeze0Encoder/encoder_layer3/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2*
(Encoder/encoder_layer3/moments/Squeeze_1?
,Encoder/encoder_layer3/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@Encoder/encoder_layer3/AssignMovingAvg/8022151*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,Encoder/encoder_layer3/AssignMovingAvg/decay?
5Encoder/encoder_layer3/AssignMovingAvg/ReadVariableOpReadVariableOp.encoder_encoder_layer3_assignmovingavg_8022151*
_output_shapes
:@*
dtype027
5Encoder/encoder_layer3/AssignMovingAvg/ReadVariableOp?
*Encoder/encoder_layer3/AssignMovingAvg/subSub=Encoder/encoder_layer3/AssignMovingAvg/ReadVariableOp:value:0/Encoder/encoder_layer3/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@Encoder/encoder_layer3/AssignMovingAvg/8022151*
_output_shapes
:@2,
*Encoder/encoder_layer3/AssignMovingAvg/sub?
*Encoder/encoder_layer3/AssignMovingAvg/mulMul.Encoder/encoder_layer3/AssignMovingAvg/sub:z:05Encoder/encoder_layer3/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@Encoder/encoder_layer3/AssignMovingAvg/8022151*
_output_shapes
:@2,
*Encoder/encoder_layer3/AssignMovingAvg/mul?
:Encoder/encoder_layer3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.encoder_encoder_layer3_assignmovingavg_8022151.Encoder/encoder_layer3/AssignMovingAvg/mul:z:06^Encoder/encoder_layer3/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@Encoder/encoder_layer3/AssignMovingAvg/8022151*
_output_shapes
 *
dtype02<
:Encoder/encoder_layer3/AssignMovingAvg/AssignSubVariableOp?
.Encoder/encoder_layer3/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@Encoder/encoder_layer3/AssignMovingAvg_1/8022157*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.Encoder/encoder_layer3/AssignMovingAvg_1/decay?
7Encoder/encoder_layer3/AssignMovingAvg_1/ReadVariableOpReadVariableOp0encoder_encoder_layer3_assignmovingavg_1_8022157*
_output_shapes
:@*
dtype029
7Encoder/encoder_layer3/AssignMovingAvg_1/ReadVariableOp?
,Encoder/encoder_layer3/AssignMovingAvg_1/subSub?Encoder/encoder_layer3/AssignMovingAvg_1/ReadVariableOp:value:01Encoder/encoder_layer3/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@Encoder/encoder_layer3/AssignMovingAvg_1/8022157*
_output_shapes
:@2.
,Encoder/encoder_layer3/AssignMovingAvg_1/sub?
,Encoder/encoder_layer3/AssignMovingAvg_1/mulMul0Encoder/encoder_layer3/AssignMovingAvg_1/sub:z:07Encoder/encoder_layer3/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@Encoder/encoder_layer3/AssignMovingAvg_1/8022157*
_output_shapes
:@2.
,Encoder/encoder_layer3/AssignMovingAvg_1/mul?
<Encoder/encoder_layer3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0encoder_encoder_layer3_assignmovingavg_1_80221570Encoder/encoder_layer3/AssignMovingAvg_1/mul:z:08^Encoder/encoder_layer3/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@Encoder/encoder_layer3/AssignMovingAvg_1/8022157*
_output_shapes
 *
dtype02>
<Encoder/encoder_layer3/AssignMovingAvg_1/AssignSubVariableOp?
&Encoder/encoder_layer3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&Encoder/encoder_layer3/batchnorm/add/y?
$Encoder/encoder_layer3/batchnorm/addAddV21Encoder/encoder_layer3/moments/Squeeze_1:output:0/Encoder/encoder_layer3/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2&
$Encoder/encoder_layer3/batchnorm/add?
&Encoder/encoder_layer3/batchnorm/RsqrtRsqrt(Encoder/encoder_layer3/batchnorm/add:z:0*
T0*
_output_shapes
:@2(
&Encoder/encoder_layer3/batchnorm/Rsqrt?
3Encoder/encoder_layer3/batchnorm/mul/ReadVariableOpReadVariableOp<encoder_encoder_layer3_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype025
3Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp?
$Encoder/encoder_layer3/batchnorm/mulMul*Encoder/encoder_layer3/batchnorm/Rsqrt:y:0;Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2&
$Encoder/encoder_layer3/batchnorm/mul?
&Encoder/encoder_layer3/batchnorm/mul_1Mul)Encoder/encoder_layer2/Relu:activations:0(Encoder/encoder_layer3/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2(
&Encoder/encoder_layer3/batchnorm/mul_1?
&Encoder/encoder_layer3/batchnorm/mul_2Mul/Encoder/encoder_layer3/moments/Squeeze:output:0(Encoder/encoder_layer3/batchnorm/mul:z:0*
T0*
_output_shapes
:@2(
&Encoder/encoder_layer3/batchnorm/mul_2?
/Encoder/encoder_layer3/batchnorm/ReadVariableOpReadVariableOp8encoder_encoder_layer3_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype021
/Encoder/encoder_layer3/batchnorm/ReadVariableOp?
$Encoder/encoder_layer3/batchnorm/subSub7Encoder/encoder_layer3/batchnorm/ReadVariableOp:value:0*Encoder/encoder_layer3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2&
$Encoder/encoder_layer3/batchnorm/sub?
&Encoder/encoder_layer3/batchnorm/add_1AddV2*Encoder/encoder_layer3/batchnorm/mul_1:z:0(Encoder/encoder_layer3/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2(
&Encoder/encoder_layer3/batchnorm/add_1?
$Encoder/encoder_layer4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$Encoder/encoder_layer4/dropout/Const?
"Encoder/encoder_layer4/dropout/MulMul*Encoder/encoder_layer3/batchnorm/add_1:z:0-Encoder/encoder_layer4/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2$
"Encoder/encoder_layer4/dropout/Mul?
$Encoder/encoder_layer4/dropout/ShapeShape*Encoder/encoder_layer3/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$Encoder/encoder_layer4/dropout/Shape?
;Encoder/encoder_layer4/dropout/random_uniform/RandomUniformRandomUniform-Encoder/encoder_layer4/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02=
;Encoder/encoder_layer4/dropout/random_uniform/RandomUniform?
-Encoder/encoder_layer4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-Encoder/encoder_layer4/dropout/GreaterEqual/y?
+Encoder/encoder_layer4/dropout/GreaterEqualGreaterEqualDEncoder/encoder_layer4/dropout/random_uniform/RandomUniform:output:06Encoder/encoder_layer4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2-
+Encoder/encoder_layer4/dropout/GreaterEqual?
#Encoder/encoder_layer4/dropout/CastCast/Encoder/encoder_layer4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2%
#Encoder/encoder_layer4/dropout/Cast?
$Encoder/encoder_layer4/dropout/Mul_1Mul&Encoder/encoder_layer4/dropout/Mul:z:0'Encoder/encoder_layer4/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2&
$Encoder/encoder_layer4/dropout/Mul_1?
,Encoder/encoder_layer5/MatMul/ReadVariableOpReadVariableOp5encoder_encoder_layer5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02.
,Encoder/encoder_layer5/MatMul/ReadVariableOp?
Encoder/encoder_layer5/MatMulMatMul(Encoder/encoder_layer4/dropout/Mul_1:z:04Encoder/encoder_layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer5/MatMul?
-Encoder/encoder_layer5/BiasAdd/ReadVariableOpReadVariableOp6encoder_encoder_layer5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Encoder/encoder_layer5/BiasAdd/ReadVariableOp?
Encoder/encoder_layer5/BiasAddBiasAdd'Encoder/encoder_layer5/MatMul:product:05Encoder/encoder_layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Encoder/encoder_layer5/BiasAdd?
Encoder/encoder_layer5/ReluRelu'Encoder/encoder_layer5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer5/Relu?
,Encoder/encoder_layer6/MatMul/ReadVariableOpReadVariableOp5encoder_encoder_layer6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Encoder/encoder_layer6/MatMul/ReadVariableOp?
Encoder/encoder_layer6/MatMulMatMul)Encoder/encoder_layer5/Relu:activations:04Encoder/encoder_layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer6/MatMul?
-Encoder/encoder_layer6/BiasAdd/ReadVariableOpReadVariableOp6encoder_encoder_layer6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Encoder/encoder_layer6/BiasAdd/ReadVariableOp?
Encoder/encoder_layer6/BiasAddBiasAdd'Encoder/encoder_layer6/MatMul:product:05Encoder/encoder_layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Encoder/encoder_layer6/BiasAdd?
Encoder/encoder_layer6/ReluRelu'Encoder/encoder_layer6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer6/Relu?
,Encoder/encoder_layer7/MatMul/ReadVariableOpReadVariableOp5encoder_encoder_layer7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Encoder/encoder_layer7/MatMul/ReadVariableOp?
Encoder/encoder_layer7/MatMulMatMul)Encoder/encoder_layer6/Relu:activations:04Encoder/encoder_layer7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer7/MatMul?
-Encoder/encoder_layer7/BiasAdd/ReadVariableOpReadVariableOp6encoder_encoder_layer7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Encoder/encoder_layer7/BiasAdd/ReadVariableOp?
Encoder/encoder_layer7/BiasAddBiasAdd'Encoder/encoder_layer7/MatMul:product:05Encoder/encoder_layer7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Encoder/encoder_layer7/BiasAdd?
Encoder/encoder_layer7/ReluRelu'Encoder/encoder_layer7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer7/Relu?
,Encoder/encoder_layer8/MatMul/ReadVariableOpReadVariableOp5encoder_encoder_layer8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02.
,Encoder/encoder_layer8/MatMul/ReadVariableOp?
Encoder/encoder_layer8/MatMulMatMul)Encoder/encoder_layer7/Relu:activations:04Encoder/encoder_layer8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Encoder/encoder_layer8/MatMul?
-Encoder/encoder_layer8/BiasAdd/ReadVariableOpReadVariableOp6encoder_encoder_layer8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-Encoder/encoder_layer8/BiasAdd/ReadVariableOp?
Encoder/encoder_layer8/BiasAddBiasAdd'Encoder/encoder_layer8/MatMul:product:05Encoder/encoder_layer8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
Encoder/encoder_layer8/BiasAdd?
Encoder/encoder_layer8/ReluRelu'Encoder/encoder_layer8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Encoder/encoder_layer8/Relu?
5Encoder/encoder_layer9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5Encoder/encoder_layer9/moments/mean/reduction_indices?
#Encoder/encoder_layer9/moments/meanMean)Encoder/encoder_layer8/Relu:activations:0>Encoder/encoder_layer9/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2%
#Encoder/encoder_layer9/moments/mean?
+Encoder/encoder_layer9/moments/StopGradientStopGradient,Encoder/encoder_layer9/moments/mean:output:0*
T0*
_output_shapes

:@2-
+Encoder/encoder_layer9/moments/StopGradient?
0Encoder/encoder_layer9/moments/SquaredDifferenceSquaredDifference)Encoder/encoder_layer8/Relu:activations:04Encoder/encoder_layer9/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@22
0Encoder/encoder_layer9/moments/SquaredDifference?
9Encoder/encoder_layer9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9Encoder/encoder_layer9/moments/variance/reduction_indices?
'Encoder/encoder_layer9/moments/varianceMean4Encoder/encoder_layer9/moments/SquaredDifference:z:0BEncoder/encoder_layer9/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2)
'Encoder/encoder_layer9/moments/variance?
&Encoder/encoder_layer9/moments/SqueezeSqueeze,Encoder/encoder_layer9/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2(
&Encoder/encoder_layer9/moments/Squeeze?
(Encoder/encoder_layer9/moments/Squeeze_1Squeeze0Encoder/encoder_layer9/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2*
(Encoder/encoder_layer9/moments/Squeeze_1?
,Encoder/encoder_layer9/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@Encoder/encoder_layer9/AssignMovingAvg/8022219*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,Encoder/encoder_layer9/AssignMovingAvg/decay?
5Encoder/encoder_layer9/AssignMovingAvg/ReadVariableOpReadVariableOp.encoder_encoder_layer9_assignmovingavg_8022219*
_output_shapes
:@*
dtype027
5Encoder/encoder_layer9/AssignMovingAvg/ReadVariableOp?
*Encoder/encoder_layer9/AssignMovingAvg/subSub=Encoder/encoder_layer9/AssignMovingAvg/ReadVariableOp:value:0/Encoder/encoder_layer9/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@Encoder/encoder_layer9/AssignMovingAvg/8022219*
_output_shapes
:@2,
*Encoder/encoder_layer9/AssignMovingAvg/sub?
*Encoder/encoder_layer9/AssignMovingAvg/mulMul.Encoder/encoder_layer9/AssignMovingAvg/sub:z:05Encoder/encoder_layer9/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@Encoder/encoder_layer9/AssignMovingAvg/8022219*
_output_shapes
:@2,
*Encoder/encoder_layer9/AssignMovingAvg/mul?
:Encoder/encoder_layer9/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.encoder_encoder_layer9_assignmovingavg_8022219.Encoder/encoder_layer9/AssignMovingAvg/mul:z:06^Encoder/encoder_layer9/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@Encoder/encoder_layer9/AssignMovingAvg/8022219*
_output_shapes
 *
dtype02<
:Encoder/encoder_layer9/AssignMovingAvg/AssignSubVariableOp?
.Encoder/encoder_layer9/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@Encoder/encoder_layer9/AssignMovingAvg_1/8022225*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.Encoder/encoder_layer9/AssignMovingAvg_1/decay?
7Encoder/encoder_layer9/AssignMovingAvg_1/ReadVariableOpReadVariableOp0encoder_encoder_layer9_assignmovingavg_1_8022225*
_output_shapes
:@*
dtype029
7Encoder/encoder_layer9/AssignMovingAvg_1/ReadVariableOp?
,Encoder/encoder_layer9/AssignMovingAvg_1/subSub?Encoder/encoder_layer9/AssignMovingAvg_1/ReadVariableOp:value:01Encoder/encoder_layer9/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@Encoder/encoder_layer9/AssignMovingAvg_1/8022225*
_output_shapes
:@2.
,Encoder/encoder_layer9/AssignMovingAvg_1/sub?
,Encoder/encoder_layer9/AssignMovingAvg_1/mulMul0Encoder/encoder_layer9/AssignMovingAvg_1/sub:z:07Encoder/encoder_layer9/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@Encoder/encoder_layer9/AssignMovingAvg_1/8022225*
_output_shapes
:@2.
,Encoder/encoder_layer9/AssignMovingAvg_1/mul?
<Encoder/encoder_layer9/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0encoder_encoder_layer9_assignmovingavg_1_80222250Encoder/encoder_layer9/AssignMovingAvg_1/mul:z:08^Encoder/encoder_layer9/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@Encoder/encoder_layer9/AssignMovingAvg_1/8022225*
_output_shapes
 *
dtype02>
<Encoder/encoder_layer9/AssignMovingAvg_1/AssignSubVariableOp?
&Encoder/encoder_layer9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&Encoder/encoder_layer9/batchnorm/add/y?
$Encoder/encoder_layer9/batchnorm/addAddV21Encoder/encoder_layer9/moments/Squeeze_1:output:0/Encoder/encoder_layer9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2&
$Encoder/encoder_layer9/batchnorm/add?
&Encoder/encoder_layer9/batchnorm/RsqrtRsqrt(Encoder/encoder_layer9/batchnorm/add:z:0*
T0*
_output_shapes
:@2(
&Encoder/encoder_layer9/batchnorm/Rsqrt?
3Encoder/encoder_layer9/batchnorm/mul/ReadVariableOpReadVariableOp<encoder_encoder_layer9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype025
3Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp?
$Encoder/encoder_layer9/batchnorm/mulMul*Encoder/encoder_layer9/batchnorm/Rsqrt:y:0;Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2&
$Encoder/encoder_layer9/batchnorm/mul?
&Encoder/encoder_layer9/batchnorm/mul_1Mul)Encoder/encoder_layer8/Relu:activations:0(Encoder/encoder_layer9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2(
&Encoder/encoder_layer9/batchnorm/mul_1?
&Encoder/encoder_layer9/batchnorm/mul_2Mul/Encoder/encoder_layer9/moments/Squeeze:output:0(Encoder/encoder_layer9/batchnorm/mul:z:0*
T0*
_output_shapes
:@2(
&Encoder/encoder_layer9/batchnorm/mul_2?
/Encoder/encoder_layer9/batchnorm/ReadVariableOpReadVariableOp8encoder_encoder_layer9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype021
/Encoder/encoder_layer9/batchnorm/ReadVariableOp?
$Encoder/encoder_layer9/batchnorm/subSub7Encoder/encoder_layer9/batchnorm/ReadVariableOp:value:0*Encoder/encoder_layer9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2&
$Encoder/encoder_layer9/batchnorm/sub?
&Encoder/encoder_layer9/batchnorm/add_1AddV2*Encoder/encoder_layer9/batchnorm/mul_1:z:0(Encoder/encoder_layer9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2(
&Encoder/encoder_layer9/batchnorm/add_1?
%Encoder/encoder_layer10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2'
%Encoder/encoder_layer10/dropout/Const?
#Encoder/encoder_layer10/dropout/MulMul*Encoder/encoder_layer9/batchnorm/add_1:z:0.Encoder/encoder_layer10/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2%
#Encoder/encoder_layer10/dropout/Mul?
%Encoder/encoder_layer10/dropout/ShapeShape*Encoder/encoder_layer9/batchnorm/add_1:z:0*
T0*
_output_shapes
:2'
%Encoder/encoder_layer10/dropout/Shape?
<Encoder/encoder_layer10/dropout/random_uniform/RandomUniformRandomUniform.Encoder/encoder_layer10/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02>
<Encoder/encoder_layer10/dropout/random_uniform/RandomUniform?
.Encoder/encoder_layer10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>20
.Encoder/encoder_layer10/dropout/GreaterEqual/y?
,Encoder/encoder_layer10/dropout/GreaterEqualGreaterEqualEEncoder/encoder_layer10/dropout/random_uniform/RandomUniform:output:07Encoder/encoder_layer10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2.
,Encoder/encoder_layer10/dropout/GreaterEqual?
$Encoder/encoder_layer10/dropout/CastCast0Encoder/encoder_layer10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2&
$Encoder/encoder_layer10/dropout/Cast?
%Encoder/encoder_layer10/dropout/Mul_1Mul'Encoder/encoder_layer10/dropout/Mul:z:0(Encoder/encoder_layer10/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2'
%Encoder/encoder_layer10/dropout/Mul_1?
,Encoder/output_encoder/MatMul/ReadVariableOpReadVariableOp5encoder_output_encoder_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02.
,Encoder/output_encoder/MatMul/ReadVariableOp?
Encoder/output_encoder/MatMulMatMul)Encoder/encoder_layer10/dropout/Mul_1:z:04Encoder/output_encoder/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
Encoder/output_encoder/MatMul?
-Encoder/output_encoder/BiasAdd/ReadVariableOpReadVariableOp6encoder_output_encoder_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-Encoder/output_encoder/BiasAdd/ReadVariableOp?
Encoder/output_encoder/BiasAddBiasAdd'Encoder/output_encoder/MatMul:product:05Encoder/output_encoder/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2 
Encoder/output_encoder/BiasAdd?
Encoder/output_encoder/ReluRelu'Encoder/output_encoder/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Encoder/output_encoder/Relu?
,Decoder/decoder_layer1/MatMul/ReadVariableOpReadVariableOp5decoder_decoder_layer1_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02.
,Decoder/decoder_layer1/MatMul/ReadVariableOp?
Decoder/decoder_layer1/MatMulMatMul)Encoder/output_encoder/Relu:activations:04Decoder/decoder_layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer1/MatMul?
-Decoder/decoder_layer1/BiasAdd/ReadVariableOpReadVariableOp6decoder_decoder_layer1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Decoder/decoder_layer1/BiasAdd/ReadVariableOp?
Decoder/decoder_layer1/BiasAddBiasAdd'Decoder/decoder_layer1/MatMul:product:05Decoder/decoder_layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Decoder/decoder_layer1/BiasAdd?
Decoder/decoder_layer1/ReluRelu'Decoder/decoder_layer1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer1/Relu?
,Decoder/decoder_layer2/MatMul/ReadVariableOpReadVariableOp5decoder_decoder_layer2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Decoder/decoder_layer2/MatMul/ReadVariableOp?
Decoder/decoder_layer2/MatMulMatMul)Decoder/decoder_layer1/Relu:activations:04Decoder/decoder_layer2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer2/MatMul?
-Decoder/decoder_layer2/BiasAdd/ReadVariableOpReadVariableOp6decoder_decoder_layer2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Decoder/decoder_layer2/BiasAdd/ReadVariableOp?
Decoder/decoder_layer2/BiasAddBiasAdd'Decoder/decoder_layer2/MatMul:product:05Decoder/decoder_layer2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Decoder/decoder_layer2/BiasAdd?
Decoder/decoder_layer2/ReluRelu'Decoder/decoder_layer2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer2/Relu?
5Decoder/decoder_layer3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5Decoder/decoder_layer3/moments/mean/reduction_indices?
#Decoder/decoder_layer3/moments/meanMean)Decoder/decoder_layer2/Relu:activations:0>Decoder/decoder_layer3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#Decoder/decoder_layer3/moments/mean?
+Decoder/decoder_layer3/moments/StopGradientStopGradient,Decoder/decoder_layer3/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+Decoder/decoder_layer3/moments/StopGradient?
0Decoder/decoder_layer3/moments/SquaredDifferenceSquaredDifference)Decoder/decoder_layer2/Relu:activations:04Decoder/decoder_layer3/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0Decoder/decoder_layer3/moments/SquaredDifference?
9Decoder/decoder_layer3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9Decoder/decoder_layer3/moments/variance/reduction_indices?
'Decoder/decoder_layer3/moments/varianceMean4Decoder/decoder_layer3/moments/SquaredDifference:z:0BDecoder/decoder_layer3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'Decoder/decoder_layer3/moments/variance?
&Decoder/decoder_layer3/moments/SqueezeSqueeze,Decoder/decoder_layer3/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&Decoder/decoder_layer3/moments/Squeeze?
(Decoder/decoder_layer3/moments/Squeeze_1Squeeze0Decoder/decoder_layer3/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(Decoder/decoder_layer3/moments/Squeeze_1?
,Decoder/decoder_layer3/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@Decoder/decoder_layer3/AssignMovingAvg/8022280*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,Decoder/decoder_layer3/AssignMovingAvg/decay?
5Decoder/decoder_layer3/AssignMovingAvg/ReadVariableOpReadVariableOp.decoder_decoder_layer3_assignmovingavg_8022280*
_output_shapes	
:?*
dtype027
5Decoder/decoder_layer3/AssignMovingAvg/ReadVariableOp?
*Decoder/decoder_layer3/AssignMovingAvg/subSub=Decoder/decoder_layer3/AssignMovingAvg/ReadVariableOp:value:0/Decoder/decoder_layer3/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@Decoder/decoder_layer3/AssignMovingAvg/8022280*
_output_shapes	
:?2,
*Decoder/decoder_layer3/AssignMovingAvg/sub?
*Decoder/decoder_layer3/AssignMovingAvg/mulMul.Decoder/decoder_layer3/AssignMovingAvg/sub:z:05Decoder/decoder_layer3/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@Decoder/decoder_layer3/AssignMovingAvg/8022280*
_output_shapes	
:?2,
*Decoder/decoder_layer3/AssignMovingAvg/mul?
:Decoder/decoder_layer3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.decoder_decoder_layer3_assignmovingavg_8022280.Decoder/decoder_layer3/AssignMovingAvg/mul:z:06^Decoder/decoder_layer3/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@Decoder/decoder_layer3/AssignMovingAvg/8022280*
_output_shapes
 *
dtype02<
:Decoder/decoder_layer3/AssignMovingAvg/AssignSubVariableOp?
.Decoder/decoder_layer3/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@Decoder/decoder_layer3/AssignMovingAvg_1/8022286*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.Decoder/decoder_layer3/AssignMovingAvg_1/decay?
7Decoder/decoder_layer3/AssignMovingAvg_1/ReadVariableOpReadVariableOp0decoder_decoder_layer3_assignmovingavg_1_8022286*
_output_shapes	
:?*
dtype029
7Decoder/decoder_layer3/AssignMovingAvg_1/ReadVariableOp?
,Decoder/decoder_layer3/AssignMovingAvg_1/subSub?Decoder/decoder_layer3/AssignMovingAvg_1/ReadVariableOp:value:01Decoder/decoder_layer3/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@Decoder/decoder_layer3/AssignMovingAvg_1/8022286*
_output_shapes	
:?2.
,Decoder/decoder_layer3/AssignMovingAvg_1/sub?
,Decoder/decoder_layer3/AssignMovingAvg_1/mulMul0Decoder/decoder_layer3/AssignMovingAvg_1/sub:z:07Decoder/decoder_layer3/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@Decoder/decoder_layer3/AssignMovingAvg_1/8022286*
_output_shapes	
:?2.
,Decoder/decoder_layer3/AssignMovingAvg_1/mul?
<Decoder/decoder_layer3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0decoder_decoder_layer3_assignmovingavg_1_80222860Decoder/decoder_layer3/AssignMovingAvg_1/mul:z:08^Decoder/decoder_layer3/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@Decoder/decoder_layer3/AssignMovingAvg_1/8022286*
_output_shapes
 *
dtype02>
<Decoder/decoder_layer3/AssignMovingAvg_1/AssignSubVariableOp?
&Decoder/decoder_layer3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&Decoder/decoder_layer3/batchnorm/add/y?
$Decoder/decoder_layer3/batchnorm/addAddV21Decoder/decoder_layer3/moments/Squeeze_1:output:0/Decoder/decoder_layer3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$Decoder/decoder_layer3/batchnorm/add?
&Decoder/decoder_layer3/batchnorm/RsqrtRsqrt(Decoder/decoder_layer3/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&Decoder/decoder_layer3/batchnorm/Rsqrt?
3Decoder/decoder_layer3/batchnorm/mul/ReadVariableOpReadVariableOp<decoder_decoder_layer3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp?
$Decoder/decoder_layer3/batchnorm/mulMul*Decoder/decoder_layer3/batchnorm/Rsqrt:y:0;Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$Decoder/decoder_layer3/batchnorm/mul?
&Decoder/decoder_layer3/batchnorm/mul_1Mul)Decoder/decoder_layer2/Relu:activations:0(Decoder/decoder_layer3/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&Decoder/decoder_layer3/batchnorm/mul_1?
&Decoder/decoder_layer3/batchnorm/mul_2Mul/Decoder/decoder_layer3/moments/Squeeze:output:0(Decoder/decoder_layer3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&Decoder/decoder_layer3/batchnorm/mul_2?
/Decoder/decoder_layer3/batchnorm/ReadVariableOpReadVariableOp8decoder_decoder_layer3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/Decoder/decoder_layer3/batchnorm/ReadVariableOp?
$Decoder/decoder_layer3/batchnorm/subSub7Decoder/decoder_layer3/batchnorm/ReadVariableOp:value:0*Decoder/decoder_layer3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$Decoder/decoder_layer3/batchnorm/sub?
&Decoder/decoder_layer3/batchnorm/add_1AddV2*Decoder/decoder_layer3/batchnorm/mul_1:z:0(Decoder/decoder_layer3/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&Decoder/decoder_layer3/batchnorm/add_1?
$Decoder/decoder_layer4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$Decoder/decoder_layer4/dropout/Const?
"Decoder/decoder_layer4/dropout/MulMul*Decoder/decoder_layer3/batchnorm/add_1:z:0-Decoder/decoder_layer4/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2$
"Decoder/decoder_layer4/dropout/Mul?
$Decoder/decoder_layer4/dropout/ShapeShape*Decoder/decoder_layer3/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$Decoder/decoder_layer4/dropout/Shape?
;Decoder/decoder_layer4/dropout/random_uniform/RandomUniformRandomUniform-Decoder/decoder_layer4/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02=
;Decoder/decoder_layer4/dropout/random_uniform/RandomUniform?
-Decoder/decoder_layer4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-Decoder/decoder_layer4/dropout/GreaterEqual/y?
+Decoder/decoder_layer4/dropout/GreaterEqualGreaterEqualDDecoder/decoder_layer4/dropout/random_uniform/RandomUniform:output:06Decoder/decoder_layer4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2-
+Decoder/decoder_layer4/dropout/GreaterEqual?
#Decoder/decoder_layer4/dropout/CastCast/Decoder/decoder_layer4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2%
#Decoder/decoder_layer4/dropout/Cast?
$Decoder/decoder_layer4/dropout/Mul_1Mul&Decoder/decoder_layer4/dropout/Mul:z:0'Decoder/decoder_layer4/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2&
$Decoder/decoder_layer4/dropout/Mul_1?
,Decoder/decoder_layer5/MatMul/ReadVariableOpReadVariableOp5decoder_decoder_layer5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Decoder/decoder_layer5/MatMul/ReadVariableOp?
Decoder/decoder_layer5/MatMulMatMul(Decoder/decoder_layer4/dropout/Mul_1:z:04Decoder/decoder_layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer5/MatMul?
-Decoder/decoder_layer5/BiasAdd/ReadVariableOpReadVariableOp6decoder_decoder_layer5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Decoder/decoder_layer5/BiasAdd/ReadVariableOp?
Decoder/decoder_layer5/BiasAddBiasAdd'Decoder/decoder_layer5/MatMul:product:05Decoder/decoder_layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Decoder/decoder_layer5/BiasAdd?
Decoder/decoder_layer5/ReluRelu'Decoder/decoder_layer5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer5/Relu?
,Decoder/decoder_layer6/MatMul/ReadVariableOpReadVariableOp5decoder_decoder_layer6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Decoder/decoder_layer6/MatMul/ReadVariableOp?
Decoder/decoder_layer6/MatMulMatMul)Decoder/decoder_layer5/Relu:activations:04Decoder/decoder_layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer6/MatMul?
-Decoder/decoder_layer6/BiasAdd/ReadVariableOpReadVariableOp6decoder_decoder_layer6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Decoder/decoder_layer6/BiasAdd/ReadVariableOp?
Decoder/decoder_layer6/BiasAddBiasAdd'Decoder/decoder_layer6/MatMul:product:05Decoder/decoder_layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Decoder/decoder_layer6/BiasAdd?
Decoder/decoder_layer6/ReluRelu'Decoder/decoder_layer6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer6/Relu?
,Decoder/decoder_layer7/MatMul/ReadVariableOpReadVariableOp5decoder_decoder_layer7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Decoder/decoder_layer7/MatMul/ReadVariableOp?
Decoder/decoder_layer7/MatMulMatMul)Decoder/decoder_layer6/Relu:activations:04Decoder/decoder_layer7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer7/MatMul?
-Decoder/decoder_layer7/BiasAdd/ReadVariableOpReadVariableOp6decoder_decoder_layer7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Decoder/decoder_layer7/BiasAdd/ReadVariableOp?
Decoder/decoder_layer7/BiasAddBiasAdd'Decoder/decoder_layer7/MatMul:product:05Decoder/decoder_layer7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Decoder/decoder_layer7/BiasAdd?
Decoder/decoder_layer7/ReluRelu'Decoder/decoder_layer7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer7/Relu?
,Decoder/decoder_layer8/MatMul/ReadVariableOpReadVariableOp5decoder_decoder_layer8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02.
,Decoder/decoder_layer8/MatMul/ReadVariableOp?
Decoder/decoder_layer8/MatMulMatMul)Decoder/decoder_layer7/Relu:activations:04Decoder/decoder_layer8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Decoder/decoder_layer8/MatMul?
-Decoder/decoder_layer8/BiasAdd/ReadVariableOpReadVariableOp6decoder_decoder_layer8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-Decoder/decoder_layer8/BiasAdd/ReadVariableOp?
Decoder/decoder_layer8/BiasAddBiasAdd'Decoder/decoder_layer8/MatMul:product:05Decoder/decoder_layer8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
Decoder/decoder_layer8/BiasAdd?
Decoder/decoder_layer8/ReluRelu'Decoder/decoder_layer8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Decoder/decoder_layer8/Relu?
5Decoder/decoder_layer9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5Decoder/decoder_layer9/moments/mean/reduction_indices?
#Decoder/decoder_layer9/moments/meanMean)Decoder/decoder_layer8/Relu:activations:0>Decoder/decoder_layer9/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2%
#Decoder/decoder_layer9/moments/mean?
+Decoder/decoder_layer9/moments/StopGradientStopGradient,Decoder/decoder_layer9/moments/mean:output:0*
T0*
_output_shapes

:@2-
+Decoder/decoder_layer9/moments/StopGradient?
0Decoder/decoder_layer9/moments/SquaredDifferenceSquaredDifference)Decoder/decoder_layer8/Relu:activations:04Decoder/decoder_layer9/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@22
0Decoder/decoder_layer9/moments/SquaredDifference?
9Decoder/decoder_layer9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9Decoder/decoder_layer9/moments/variance/reduction_indices?
'Decoder/decoder_layer9/moments/varianceMean4Decoder/decoder_layer9/moments/SquaredDifference:z:0BDecoder/decoder_layer9/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2)
'Decoder/decoder_layer9/moments/variance?
&Decoder/decoder_layer9/moments/SqueezeSqueeze,Decoder/decoder_layer9/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2(
&Decoder/decoder_layer9/moments/Squeeze?
(Decoder/decoder_layer9/moments/Squeeze_1Squeeze0Decoder/decoder_layer9/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2*
(Decoder/decoder_layer9/moments/Squeeze_1?
,Decoder/decoder_layer9/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@Decoder/decoder_layer9/AssignMovingAvg/8022348*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,Decoder/decoder_layer9/AssignMovingAvg/decay?
5Decoder/decoder_layer9/AssignMovingAvg/ReadVariableOpReadVariableOp.decoder_decoder_layer9_assignmovingavg_8022348*
_output_shapes
:@*
dtype027
5Decoder/decoder_layer9/AssignMovingAvg/ReadVariableOp?
*Decoder/decoder_layer9/AssignMovingAvg/subSub=Decoder/decoder_layer9/AssignMovingAvg/ReadVariableOp:value:0/Decoder/decoder_layer9/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@Decoder/decoder_layer9/AssignMovingAvg/8022348*
_output_shapes
:@2,
*Decoder/decoder_layer9/AssignMovingAvg/sub?
*Decoder/decoder_layer9/AssignMovingAvg/mulMul.Decoder/decoder_layer9/AssignMovingAvg/sub:z:05Decoder/decoder_layer9/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@Decoder/decoder_layer9/AssignMovingAvg/8022348*
_output_shapes
:@2,
*Decoder/decoder_layer9/AssignMovingAvg/mul?
:Decoder/decoder_layer9/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.decoder_decoder_layer9_assignmovingavg_8022348.Decoder/decoder_layer9/AssignMovingAvg/mul:z:06^Decoder/decoder_layer9/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@Decoder/decoder_layer9/AssignMovingAvg/8022348*
_output_shapes
 *
dtype02<
:Decoder/decoder_layer9/AssignMovingAvg/AssignSubVariableOp?
.Decoder/decoder_layer9/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@Decoder/decoder_layer9/AssignMovingAvg_1/8022354*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.Decoder/decoder_layer9/AssignMovingAvg_1/decay?
7Decoder/decoder_layer9/AssignMovingAvg_1/ReadVariableOpReadVariableOp0decoder_decoder_layer9_assignmovingavg_1_8022354*
_output_shapes
:@*
dtype029
7Decoder/decoder_layer9/AssignMovingAvg_1/ReadVariableOp?
,Decoder/decoder_layer9/AssignMovingAvg_1/subSub?Decoder/decoder_layer9/AssignMovingAvg_1/ReadVariableOp:value:01Decoder/decoder_layer9/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@Decoder/decoder_layer9/AssignMovingAvg_1/8022354*
_output_shapes
:@2.
,Decoder/decoder_layer9/AssignMovingAvg_1/sub?
,Decoder/decoder_layer9/AssignMovingAvg_1/mulMul0Decoder/decoder_layer9/AssignMovingAvg_1/sub:z:07Decoder/decoder_layer9/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@Decoder/decoder_layer9/AssignMovingAvg_1/8022354*
_output_shapes
:@2.
,Decoder/decoder_layer9/AssignMovingAvg_1/mul?
<Decoder/decoder_layer9/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0decoder_decoder_layer9_assignmovingavg_1_80223540Decoder/decoder_layer9/AssignMovingAvg_1/mul:z:08^Decoder/decoder_layer9/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@Decoder/decoder_layer9/AssignMovingAvg_1/8022354*
_output_shapes
 *
dtype02>
<Decoder/decoder_layer9/AssignMovingAvg_1/AssignSubVariableOp?
&Decoder/decoder_layer9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&Decoder/decoder_layer9/batchnorm/add/y?
$Decoder/decoder_layer9/batchnorm/addAddV21Decoder/decoder_layer9/moments/Squeeze_1:output:0/Decoder/decoder_layer9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2&
$Decoder/decoder_layer9/batchnorm/add?
&Decoder/decoder_layer9/batchnorm/RsqrtRsqrt(Decoder/decoder_layer9/batchnorm/add:z:0*
T0*
_output_shapes
:@2(
&Decoder/decoder_layer9/batchnorm/Rsqrt?
3Decoder/decoder_layer9/batchnorm/mul/ReadVariableOpReadVariableOp<decoder_decoder_layer9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype025
3Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp?
$Decoder/decoder_layer9/batchnorm/mulMul*Decoder/decoder_layer9/batchnorm/Rsqrt:y:0;Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2&
$Decoder/decoder_layer9/batchnorm/mul?
&Decoder/decoder_layer9/batchnorm/mul_1Mul)Decoder/decoder_layer8/Relu:activations:0(Decoder/decoder_layer9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2(
&Decoder/decoder_layer9/batchnorm/mul_1?
&Decoder/decoder_layer9/batchnorm/mul_2Mul/Decoder/decoder_layer9/moments/Squeeze:output:0(Decoder/decoder_layer9/batchnorm/mul:z:0*
T0*
_output_shapes
:@2(
&Decoder/decoder_layer9/batchnorm/mul_2?
/Decoder/decoder_layer9/batchnorm/ReadVariableOpReadVariableOp8decoder_decoder_layer9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype021
/Decoder/decoder_layer9/batchnorm/ReadVariableOp?
$Decoder/decoder_layer9/batchnorm/subSub7Decoder/decoder_layer9/batchnorm/ReadVariableOp:value:0*Decoder/decoder_layer9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2&
$Decoder/decoder_layer9/batchnorm/sub?
&Decoder/decoder_layer9/batchnorm/add_1AddV2*Decoder/decoder_layer9/batchnorm/mul_1:z:0(Decoder/decoder_layer9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2(
&Decoder/decoder_layer9/batchnorm/add_1?
%Decoder/decoder_layer10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2'
%Decoder/decoder_layer10/dropout/Const?
#Decoder/decoder_layer10/dropout/MulMul*Decoder/decoder_layer9/batchnorm/add_1:z:0.Decoder/decoder_layer10/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2%
#Decoder/decoder_layer10/dropout/Mul?
%Decoder/decoder_layer10/dropout/ShapeShape*Decoder/decoder_layer9/batchnorm/add_1:z:0*
T0*
_output_shapes
:2'
%Decoder/decoder_layer10/dropout/Shape?
<Decoder/decoder_layer10/dropout/random_uniform/RandomUniformRandomUniform.Decoder/decoder_layer10/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02>
<Decoder/decoder_layer10/dropout/random_uniform/RandomUniform?
.Decoder/decoder_layer10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>20
.Decoder/decoder_layer10/dropout/GreaterEqual/y?
,Decoder/decoder_layer10/dropout/GreaterEqualGreaterEqualEDecoder/decoder_layer10/dropout/random_uniform/RandomUniform:output:07Decoder/decoder_layer10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2.
,Decoder/decoder_layer10/dropout/GreaterEqual?
$Decoder/decoder_layer10/dropout/CastCast0Decoder/decoder_layer10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2&
$Decoder/decoder_layer10/dropout/Cast?
%Decoder/decoder_layer10/dropout/Mul_1Mul'Decoder/decoder_layer10/dropout/Mul:z:0(Decoder/decoder_layer10/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2'
%Decoder/decoder_layer10/dropout/Mul_1?
*Decoder/output_layer/MatMul/ReadVariableOpReadVariableOp3decoder_output_layer_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02,
*Decoder/output_layer/MatMul/ReadVariableOp?
Decoder/output_layer/MatMulMatMul)Decoder/decoder_layer10/dropout/Mul_1:z:02Decoder/output_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Decoder/output_layer/MatMul?
+Decoder/output_layer/BiasAdd/ReadVariableOpReadVariableOp4decoder_output_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+Decoder/output_layer/BiasAdd/ReadVariableOp?
Decoder/output_layer/BiasAddBiasAdd%Decoder/output_layer/MatMul:product:03Decoder/output_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Decoder/output_layer/BiasAdd?
Decoder/output_layer/SigmoidSigmoid%Decoder/output_layer/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Decoder/output_layer/Sigmoid?
IdentityIdentity Decoder/output_layer/Sigmoid:y:0.^Decoder/decoder_layer1/BiasAdd/ReadVariableOp-^Decoder/decoder_layer1/MatMul/ReadVariableOp.^Decoder/decoder_layer2/BiasAdd/ReadVariableOp-^Decoder/decoder_layer2/MatMul/ReadVariableOp;^Decoder/decoder_layer3/AssignMovingAvg/AssignSubVariableOp6^Decoder/decoder_layer3/AssignMovingAvg/ReadVariableOp=^Decoder/decoder_layer3/AssignMovingAvg_1/AssignSubVariableOp8^Decoder/decoder_layer3/AssignMovingAvg_1/ReadVariableOp0^Decoder/decoder_layer3/batchnorm/ReadVariableOp4^Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp.^Decoder/decoder_layer5/BiasAdd/ReadVariableOp-^Decoder/decoder_layer5/MatMul/ReadVariableOp.^Decoder/decoder_layer6/BiasAdd/ReadVariableOp-^Decoder/decoder_layer6/MatMul/ReadVariableOp.^Decoder/decoder_layer7/BiasAdd/ReadVariableOp-^Decoder/decoder_layer7/MatMul/ReadVariableOp.^Decoder/decoder_layer8/BiasAdd/ReadVariableOp-^Decoder/decoder_layer8/MatMul/ReadVariableOp;^Decoder/decoder_layer9/AssignMovingAvg/AssignSubVariableOp6^Decoder/decoder_layer9/AssignMovingAvg/ReadVariableOp=^Decoder/decoder_layer9/AssignMovingAvg_1/AssignSubVariableOp8^Decoder/decoder_layer9/AssignMovingAvg_1/ReadVariableOp0^Decoder/decoder_layer9/batchnorm/ReadVariableOp4^Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp,^Decoder/output_layer/BiasAdd/ReadVariableOp+^Decoder/output_layer/MatMul/ReadVariableOp.^Encoder/encoder_layer1/BiasAdd/ReadVariableOp-^Encoder/encoder_layer1/MatMul/ReadVariableOp.^Encoder/encoder_layer2/BiasAdd/ReadVariableOp-^Encoder/encoder_layer2/MatMul/ReadVariableOp;^Encoder/encoder_layer3/AssignMovingAvg/AssignSubVariableOp6^Encoder/encoder_layer3/AssignMovingAvg/ReadVariableOp=^Encoder/encoder_layer3/AssignMovingAvg_1/AssignSubVariableOp8^Encoder/encoder_layer3/AssignMovingAvg_1/ReadVariableOp0^Encoder/encoder_layer3/batchnorm/ReadVariableOp4^Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp.^Encoder/encoder_layer5/BiasAdd/ReadVariableOp-^Encoder/encoder_layer5/MatMul/ReadVariableOp.^Encoder/encoder_layer6/BiasAdd/ReadVariableOp-^Encoder/encoder_layer6/MatMul/ReadVariableOp.^Encoder/encoder_layer7/BiasAdd/ReadVariableOp-^Encoder/encoder_layer7/MatMul/ReadVariableOp.^Encoder/encoder_layer8/BiasAdd/ReadVariableOp-^Encoder/encoder_layer8/MatMul/ReadVariableOp;^Encoder/encoder_layer9/AssignMovingAvg/AssignSubVariableOp6^Encoder/encoder_layer9/AssignMovingAvg/ReadVariableOp=^Encoder/encoder_layer9/AssignMovingAvg_1/AssignSubVariableOp8^Encoder/encoder_layer9/AssignMovingAvg_1/ReadVariableOp0^Encoder/encoder_layer9/batchnorm/ReadVariableOp4^Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp.^Encoder/output_encoder/BiasAdd/ReadVariableOp-^Encoder/output_encoder/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????::::::::::::::::::::::::::::::::::::::::::::2^
-Decoder/decoder_layer1/BiasAdd/ReadVariableOp-Decoder/decoder_layer1/BiasAdd/ReadVariableOp2\
,Decoder/decoder_layer1/MatMul/ReadVariableOp,Decoder/decoder_layer1/MatMul/ReadVariableOp2^
-Decoder/decoder_layer2/BiasAdd/ReadVariableOp-Decoder/decoder_layer2/BiasAdd/ReadVariableOp2\
,Decoder/decoder_layer2/MatMul/ReadVariableOp,Decoder/decoder_layer2/MatMul/ReadVariableOp2x
:Decoder/decoder_layer3/AssignMovingAvg/AssignSubVariableOp:Decoder/decoder_layer3/AssignMovingAvg/AssignSubVariableOp2n
5Decoder/decoder_layer3/AssignMovingAvg/ReadVariableOp5Decoder/decoder_layer3/AssignMovingAvg/ReadVariableOp2|
<Decoder/decoder_layer3/AssignMovingAvg_1/AssignSubVariableOp<Decoder/decoder_layer3/AssignMovingAvg_1/AssignSubVariableOp2r
7Decoder/decoder_layer3/AssignMovingAvg_1/ReadVariableOp7Decoder/decoder_layer3/AssignMovingAvg_1/ReadVariableOp2b
/Decoder/decoder_layer3/batchnorm/ReadVariableOp/Decoder/decoder_layer3/batchnorm/ReadVariableOp2j
3Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp3Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp2^
-Decoder/decoder_layer5/BiasAdd/ReadVariableOp-Decoder/decoder_layer5/BiasAdd/ReadVariableOp2\
,Decoder/decoder_layer5/MatMul/ReadVariableOp,Decoder/decoder_layer5/MatMul/ReadVariableOp2^
-Decoder/decoder_layer6/BiasAdd/ReadVariableOp-Decoder/decoder_layer6/BiasAdd/ReadVariableOp2\
,Decoder/decoder_layer6/MatMul/ReadVariableOp,Decoder/decoder_layer6/MatMul/ReadVariableOp2^
-Decoder/decoder_layer7/BiasAdd/ReadVariableOp-Decoder/decoder_layer7/BiasAdd/ReadVariableOp2\
,Decoder/decoder_layer7/MatMul/ReadVariableOp,Decoder/decoder_layer7/MatMul/ReadVariableOp2^
-Decoder/decoder_layer8/BiasAdd/ReadVariableOp-Decoder/decoder_layer8/BiasAdd/ReadVariableOp2\
,Decoder/decoder_layer8/MatMul/ReadVariableOp,Decoder/decoder_layer8/MatMul/ReadVariableOp2x
:Decoder/decoder_layer9/AssignMovingAvg/AssignSubVariableOp:Decoder/decoder_layer9/AssignMovingAvg/AssignSubVariableOp2n
5Decoder/decoder_layer9/AssignMovingAvg/ReadVariableOp5Decoder/decoder_layer9/AssignMovingAvg/ReadVariableOp2|
<Decoder/decoder_layer9/AssignMovingAvg_1/AssignSubVariableOp<Decoder/decoder_layer9/AssignMovingAvg_1/AssignSubVariableOp2r
7Decoder/decoder_layer9/AssignMovingAvg_1/ReadVariableOp7Decoder/decoder_layer9/AssignMovingAvg_1/ReadVariableOp2b
/Decoder/decoder_layer9/batchnorm/ReadVariableOp/Decoder/decoder_layer9/batchnorm/ReadVariableOp2j
3Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp3Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp2Z
+Decoder/output_layer/BiasAdd/ReadVariableOp+Decoder/output_layer/BiasAdd/ReadVariableOp2X
*Decoder/output_layer/MatMul/ReadVariableOp*Decoder/output_layer/MatMul/ReadVariableOp2^
-Encoder/encoder_layer1/BiasAdd/ReadVariableOp-Encoder/encoder_layer1/BiasAdd/ReadVariableOp2\
,Encoder/encoder_layer1/MatMul/ReadVariableOp,Encoder/encoder_layer1/MatMul/ReadVariableOp2^
-Encoder/encoder_layer2/BiasAdd/ReadVariableOp-Encoder/encoder_layer2/BiasAdd/ReadVariableOp2\
,Encoder/encoder_layer2/MatMul/ReadVariableOp,Encoder/encoder_layer2/MatMul/ReadVariableOp2x
:Encoder/encoder_layer3/AssignMovingAvg/AssignSubVariableOp:Encoder/encoder_layer3/AssignMovingAvg/AssignSubVariableOp2n
5Encoder/encoder_layer3/AssignMovingAvg/ReadVariableOp5Encoder/encoder_layer3/AssignMovingAvg/ReadVariableOp2|
<Encoder/encoder_layer3/AssignMovingAvg_1/AssignSubVariableOp<Encoder/encoder_layer3/AssignMovingAvg_1/AssignSubVariableOp2r
7Encoder/encoder_layer3/AssignMovingAvg_1/ReadVariableOp7Encoder/encoder_layer3/AssignMovingAvg_1/ReadVariableOp2b
/Encoder/encoder_layer3/batchnorm/ReadVariableOp/Encoder/encoder_layer3/batchnorm/ReadVariableOp2j
3Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp3Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp2^
-Encoder/encoder_layer5/BiasAdd/ReadVariableOp-Encoder/encoder_layer5/BiasAdd/ReadVariableOp2\
,Encoder/encoder_layer5/MatMul/ReadVariableOp,Encoder/encoder_layer5/MatMul/ReadVariableOp2^
-Encoder/encoder_layer6/BiasAdd/ReadVariableOp-Encoder/encoder_layer6/BiasAdd/ReadVariableOp2\
,Encoder/encoder_layer6/MatMul/ReadVariableOp,Encoder/encoder_layer6/MatMul/ReadVariableOp2^
-Encoder/encoder_layer7/BiasAdd/ReadVariableOp-Encoder/encoder_layer7/BiasAdd/ReadVariableOp2\
,Encoder/encoder_layer7/MatMul/ReadVariableOp,Encoder/encoder_layer7/MatMul/ReadVariableOp2^
-Encoder/encoder_layer8/BiasAdd/ReadVariableOp-Encoder/encoder_layer8/BiasAdd/ReadVariableOp2\
,Encoder/encoder_layer8/MatMul/ReadVariableOp,Encoder/encoder_layer8/MatMul/ReadVariableOp2x
:Encoder/encoder_layer9/AssignMovingAvg/AssignSubVariableOp:Encoder/encoder_layer9/AssignMovingAvg/AssignSubVariableOp2n
5Encoder/encoder_layer9/AssignMovingAvg/ReadVariableOp5Encoder/encoder_layer9/AssignMovingAvg/ReadVariableOp2|
<Encoder/encoder_layer9/AssignMovingAvg_1/AssignSubVariableOp<Encoder/encoder_layer9/AssignMovingAvg_1/AssignSubVariableOp2r
7Encoder/encoder_layer9/AssignMovingAvg_1/ReadVariableOp7Encoder/encoder_layer9/AssignMovingAvg_1/ReadVariableOp2b
/Encoder/encoder_layer9/batchnorm/ReadVariableOp/Encoder/encoder_layer9/batchnorm/ReadVariableOp2j
3Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp3Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp2^
-Encoder/output_encoder/BiasAdd/ReadVariableOp-Encoder/output_encoder/BiasAdd/ReadVariableOp2\
,Encoder/output_encoder/MatMul/ReadVariableOp,Encoder/output_encoder/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
K__inference_decoder_layer8_layer_call_and_return_conditional_losses_8023958

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
K__inference_decoder_layer6_layer_call_and_return_conditional_losses_8020824

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?0
?
K__inference_decoder_layer3_layer_call_and_return_conditional_losses_8023814

inputs
assignmovingavg_8023789
assignmovingavg_1_8023795)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8023789*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_8023789*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8023789*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8023789*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_8023789AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8023789*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8023795*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_8023795*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8023795*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8023795*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_8023795AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8023795*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_decoder_layer5_layer_call_fn_8023907

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer5_layer_call_and_return_conditional_losses_80207972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_encoder_layer6_layer_call_fn_8023569

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer6_layer_call_and_return_conditional_losses_80199442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
K__inference_decoder_layer5_layer_call_and_return_conditional_losses_8020797

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
K__inference_encoder_layer2_layer_call_and_return_conditional_losses_8019825

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_decoder_layer10_layer_call_fn_8024076

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_decoder_layer10_layer_call_and_return_conditional_losses_80209462
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?.
"__inference__wrapped_model_8019503
input_autoencoderE
Aautoencoder_encoder_encoder_layer1_matmul_readvariableop_resourceF
Bautoencoder_encoder_encoder_layer1_biasadd_readvariableop_resourceE
Aautoencoder_encoder_encoder_layer2_matmul_readvariableop_resourceF
Bautoencoder_encoder_encoder_layer2_biasadd_readvariableop_resourceH
Dautoencoder_encoder_encoder_layer3_batchnorm_readvariableop_resourceL
Hautoencoder_encoder_encoder_layer3_batchnorm_mul_readvariableop_resourceJ
Fautoencoder_encoder_encoder_layer3_batchnorm_readvariableop_1_resourceJ
Fautoencoder_encoder_encoder_layer3_batchnorm_readvariableop_2_resourceE
Aautoencoder_encoder_encoder_layer5_matmul_readvariableop_resourceF
Bautoencoder_encoder_encoder_layer5_biasadd_readvariableop_resourceE
Aautoencoder_encoder_encoder_layer6_matmul_readvariableop_resourceF
Bautoencoder_encoder_encoder_layer6_biasadd_readvariableop_resourceE
Aautoencoder_encoder_encoder_layer7_matmul_readvariableop_resourceF
Bautoencoder_encoder_encoder_layer7_biasadd_readvariableop_resourceE
Aautoencoder_encoder_encoder_layer8_matmul_readvariableop_resourceF
Bautoencoder_encoder_encoder_layer8_biasadd_readvariableop_resourceH
Dautoencoder_encoder_encoder_layer9_batchnorm_readvariableop_resourceL
Hautoencoder_encoder_encoder_layer9_batchnorm_mul_readvariableop_resourceJ
Fautoencoder_encoder_encoder_layer9_batchnorm_readvariableop_1_resourceJ
Fautoencoder_encoder_encoder_layer9_batchnorm_readvariableop_2_resourceE
Aautoencoder_encoder_output_encoder_matmul_readvariableop_resourceF
Bautoencoder_encoder_output_encoder_biasadd_readvariableop_resourceE
Aautoencoder_decoder_decoder_layer1_matmul_readvariableop_resourceF
Bautoencoder_decoder_decoder_layer1_biasadd_readvariableop_resourceE
Aautoencoder_decoder_decoder_layer2_matmul_readvariableop_resourceF
Bautoencoder_decoder_decoder_layer2_biasadd_readvariableop_resourceH
Dautoencoder_decoder_decoder_layer3_batchnorm_readvariableop_resourceL
Hautoencoder_decoder_decoder_layer3_batchnorm_mul_readvariableop_resourceJ
Fautoencoder_decoder_decoder_layer3_batchnorm_readvariableop_1_resourceJ
Fautoencoder_decoder_decoder_layer3_batchnorm_readvariableop_2_resourceE
Aautoencoder_decoder_decoder_layer5_matmul_readvariableop_resourceF
Bautoencoder_decoder_decoder_layer5_biasadd_readvariableop_resourceE
Aautoencoder_decoder_decoder_layer6_matmul_readvariableop_resourceF
Bautoencoder_decoder_decoder_layer6_biasadd_readvariableop_resourceE
Aautoencoder_decoder_decoder_layer7_matmul_readvariableop_resourceF
Bautoencoder_decoder_decoder_layer7_biasadd_readvariableop_resourceE
Aautoencoder_decoder_decoder_layer8_matmul_readvariableop_resourceF
Bautoencoder_decoder_decoder_layer8_biasadd_readvariableop_resourceH
Dautoencoder_decoder_decoder_layer9_batchnorm_readvariableop_resourceL
Hautoencoder_decoder_decoder_layer9_batchnorm_mul_readvariableop_resourceJ
Fautoencoder_decoder_decoder_layer9_batchnorm_readvariableop_1_resourceJ
Fautoencoder_decoder_decoder_layer9_batchnorm_readvariableop_2_resourceC
?autoencoder_decoder_output_layer_matmul_readvariableop_resourceD
@autoencoder_decoder_output_layer_biasadd_readvariableop_resource
identity??9AutoEncoder/Decoder/decoder_layer1/BiasAdd/ReadVariableOp?8AutoEncoder/Decoder/decoder_layer1/MatMul/ReadVariableOp?9AutoEncoder/Decoder/decoder_layer2/BiasAdd/ReadVariableOp?8AutoEncoder/Decoder/decoder_layer2/MatMul/ReadVariableOp?;AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp?=AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp_1?=AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp_2??AutoEncoder/Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp?9AutoEncoder/Decoder/decoder_layer5/BiasAdd/ReadVariableOp?8AutoEncoder/Decoder/decoder_layer5/MatMul/ReadVariableOp?9AutoEncoder/Decoder/decoder_layer6/BiasAdd/ReadVariableOp?8AutoEncoder/Decoder/decoder_layer6/MatMul/ReadVariableOp?9AutoEncoder/Decoder/decoder_layer7/BiasAdd/ReadVariableOp?8AutoEncoder/Decoder/decoder_layer7/MatMul/ReadVariableOp?9AutoEncoder/Decoder/decoder_layer8/BiasAdd/ReadVariableOp?8AutoEncoder/Decoder/decoder_layer8/MatMul/ReadVariableOp?;AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp?=AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp_1?=AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp_2??AutoEncoder/Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp?7AutoEncoder/Decoder/output_layer/BiasAdd/ReadVariableOp?6AutoEncoder/Decoder/output_layer/MatMul/ReadVariableOp?9AutoEncoder/Encoder/encoder_layer1/BiasAdd/ReadVariableOp?8AutoEncoder/Encoder/encoder_layer1/MatMul/ReadVariableOp?9AutoEncoder/Encoder/encoder_layer2/BiasAdd/ReadVariableOp?8AutoEncoder/Encoder/encoder_layer2/MatMul/ReadVariableOp?;AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp?=AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp_1?=AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp_2??AutoEncoder/Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp?9AutoEncoder/Encoder/encoder_layer5/BiasAdd/ReadVariableOp?8AutoEncoder/Encoder/encoder_layer5/MatMul/ReadVariableOp?9AutoEncoder/Encoder/encoder_layer6/BiasAdd/ReadVariableOp?8AutoEncoder/Encoder/encoder_layer6/MatMul/ReadVariableOp?9AutoEncoder/Encoder/encoder_layer7/BiasAdd/ReadVariableOp?8AutoEncoder/Encoder/encoder_layer7/MatMul/ReadVariableOp?9AutoEncoder/Encoder/encoder_layer8/BiasAdd/ReadVariableOp?8AutoEncoder/Encoder/encoder_layer8/MatMul/ReadVariableOp?;AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp?=AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp_1?=AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp_2??AutoEncoder/Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp?9AutoEncoder/Encoder/output_encoder/BiasAdd/ReadVariableOp?8AutoEncoder/Encoder/output_encoder/MatMul/ReadVariableOp?
8AutoEncoder/Encoder/encoder_layer1/MatMul/ReadVariableOpReadVariableOpAautoencoder_encoder_encoder_layer1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02:
8AutoEncoder/Encoder/encoder_layer1/MatMul/ReadVariableOp?
)AutoEncoder/Encoder/encoder_layer1/MatMulMatMulinput_autoencoder@AutoEncoder/Encoder/encoder_layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)AutoEncoder/Encoder/encoder_layer1/MatMul?
9AutoEncoder/Encoder/encoder_layer1/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_encoder_encoder_layer1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9AutoEncoder/Encoder/encoder_layer1/BiasAdd/ReadVariableOp?
*AutoEncoder/Encoder/encoder_layer1/BiasAddBiasAdd3AutoEncoder/Encoder/encoder_layer1/MatMul:product:0AAutoEncoder/Encoder/encoder_layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*AutoEncoder/Encoder/encoder_layer1/BiasAdd?
'AutoEncoder/Encoder/encoder_layer1/ReluRelu3AutoEncoder/Encoder/encoder_layer1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2)
'AutoEncoder/Encoder/encoder_layer1/Relu?
8AutoEncoder/Encoder/encoder_layer2/MatMul/ReadVariableOpReadVariableOpAautoencoder_encoder_encoder_layer2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02:
8AutoEncoder/Encoder/encoder_layer2/MatMul/ReadVariableOp?
)AutoEncoder/Encoder/encoder_layer2/MatMulMatMul5AutoEncoder/Encoder/encoder_layer1/Relu:activations:0@AutoEncoder/Encoder/encoder_layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2+
)AutoEncoder/Encoder/encoder_layer2/MatMul?
9AutoEncoder/Encoder/encoder_layer2/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_encoder_encoder_layer2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02;
9AutoEncoder/Encoder/encoder_layer2/BiasAdd/ReadVariableOp?
*AutoEncoder/Encoder/encoder_layer2/BiasAddBiasAdd3AutoEncoder/Encoder/encoder_layer2/MatMul:product:0AAutoEncoder/Encoder/encoder_layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2,
*AutoEncoder/Encoder/encoder_layer2/BiasAdd?
'AutoEncoder/Encoder/encoder_layer2/ReluRelu3AutoEncoder/Encoder/encoder_layer2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2)
'AutoEncoder/Encoder/encoder_layer2/Relu?
;AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOpReadVariableOpDautoencoder_encoder_encoder_layer3_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02=
;AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp?
2AutoEncoder/Encoder/encoder_layer3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2AutoEncoder/Encoder/encoder_layer3/batchnorm/add/y?
0AutoEncoder/Encoder/encoder_layer3/batchnorm/addAddV2CAutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp:value:0;AutoEncoder/Encoder/encoder_layer3/batchnorm/add/y:output:0*
T0*
_output_shapes
:@22
0AutoEncoder/Encoder/encoder_layer3/batchnorm/add?
2AutoEncoder/Encoder/encoder_layer3/batchnorm/RsqrtRsqrt4AutoEncoder/Encoder/encoder_layer3/batchnorm/add:z:0*
T0*
_output_shapes
:@24
2AutoEncoder/Encoder/encoder_layer3/batchnorm/Rsqrt?
?AutoEncoder/Encoder/encoder_layer3/batchnorm/mul/ReadVariableOpReadVariableOpHautoencoder_encoder_encoder_layer3_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02A
?AutoEncoder/Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp?
0AutoEncoder/Encoder/encoder_layer3/batchnorm/mulMul6AutoEncoder/Encoder/encoder_layer3/batchnorm/Rsqrt:y:0GAutoEncoder/Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@22
0AutoEncoder/Encoder/encoder_layer3/batchnorm/mul?
2AutoEncoder/Encoder/encoder_layer3/batchnorm/mul_1Mul5AutoEncoder/Encoder/encoder_layer2/Relu:activations:04AutoEncoder/Encoder/encoder_layer3/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@24
2AutoEncoder/Encoder/encoder_layer3/batchnorm/mul_1?
=AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp_1ReadVariableOpFautoencoder_encoder_encoder_layer3_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02?
=AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp_1?
2AutoEncoder/Encoder/encoder_layer3/batchnorm/mul_2MulEAutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp_1:value:04AutoEncoder/Encoder/encoder_layer3/batchnorm/mul:z:0*
T0*
_output_shapes
:@24
2AutoEncoder/Encoder/encoder_layer3/batchnorm/mul_2?
=AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp_2ReadVariableOpFautoencoder_encoder_encoder_layer3_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02?
=AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp_2?
0AutoEncoder/Encoder/encoder_layer3/batchnorm/subSubEAutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp_2:value:06AutoEncoder/Encoder/encoder_layer3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@22
0AutoEncoder/Encoder/encoder_layer3/batchnorm/sub?
2AutoEncoder/Encoder/encoder_layer3/batchnorm/add_1AddV26AutoEncoder/Encoder/encoder_layer3/batchnorm/mul_1:z:04AutoEncoder/Encoder/encoder_layer3/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@24
2AutoEncoder/Encoder/encoder_layer3/batchnorm/add_1?
+AutoEncoder/Encoder/encoder_layer4/IdentityIdentity6AutoEncoder/Encoder/encoder_layer3/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????@2-
+AutoEncoder/Encoder/encoder_layer4/Identity?
8AutoEncoder/Encoder/encoder_layer5/MatMul/ReadVariableOpReadVariableOpAautoencoder_encoder_encoder_layer5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02:
8AutoEncoder/Encoder/encoder_layer5/MatMul/ReadVariableOp?
)AutoEncoder/Encoder/encoder_layer5/MatMulMatMul4AutoEncoder/Encoder/encoder_layer4/Identity:output:0@AutoEncoder/Encoder/encoder_layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)AutoEncoder/Encoder/encoder_layer5/MatMul?
9AutoEncoder/Encoder/encoder_layer5/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_encoder_encoder_layer5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9AutoEncoder/Encoder/encoder_layer5/BiasAdd/ReadVariableOp?
*AutoEncoder/Encoder/encoder_layer5/BiasAddBiasAdd3AutoEncoder/Encoder/encoder_layer5/MatMul:product:0AAutoEncoder/Encoder/encoder_layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*AutoEncoder/Encoder/encoder_layer5/BiasAdd?
'AutoEncoder/Encoder/encoder_layer5/ReluRelu3AutoEncoder/Encoder/encoder_layer5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2)
'AutoEncoder/Encoder/encoder_layer5/Relu?
8AutoEncoder/Encoder/encoder_layer6/MatMul/ReadVariableOpReadVariableOpAautoencoder_encoder_encoder_layer6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02:
8AutoEncoder/Encoder/encoder_layer6/MatMul/ReadVariableOp?
)AutoEncoder/Encoder/encoder_layer6/MatMulMatMul5AutoEncoder/Encoder/encoder_layer5/Relu:activations:0@AutoEncoder/Encoder/encoder_layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)AutoEncoder/Encoder/encoder_layer6/MatMul?
9AutoEncoder/Encoder/encoder_layer6/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_encoder_encoder_layer6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9AutoEncoder/Encoder/encoder_layer6/BiasAdd/ReadVariableOp?
*AutoEncoder/Encoder/encoder_layer6/BiasAddBiasAdd3AutoEncoder/Encoder/encoder_layer6/MatMul:product:0AAutoEncoder/Encoder/encoder_layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*AutoEncoder/Encoder/encoder_layer6/BiasAdd?
'AutoEncoder/Encoder/encoder_layer6/ReluRelu3AutoEncoder/Encoder/encoder_layer6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2)
'AutoEncoder/Encoder/encoder_layer6/Relu?
8AutoEncoder/Encoder/encoder_layer7/MatMul/ReadVariableOpReadVariableOpAautoencoder_encoder_encoder_layer7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02:
8AutoEncoder/Encoder/encoder_layer7/MatMul/ReadVariableOp?
)AutoEncoder/Encoder/encoder_layer7/MatMulMatMul5AutoEncoder/Encoder/encoder_layer6/Relu:activations:0@AutoEncoder/Encoder/encoder_layer7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)AutoEncoder/Encoder/encoder_layer7/MatMul?
9AutoEncoder/Encoder/encoder_layer7/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_encoder_encoder_layer7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9AutoEncoder/Encoder/encoder_layer7/BiasAdd/ReadVariableOp?
*AutoEncoder/Encoder/encoder_layer7/BiasAddBiasAdd3AutoEncoder/Encoder/encoder_layer7/MatMul:product:0AAutoEncoder/Encoder/encoder_layer7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*AutoEncoder/Encoder/encoder_layer7/BiasAdd?
'AutoEncoder/Encoder/encoder_layer7/ReluRelu3AutoEncoder/Encoder/encoder_layer7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2)
'AutoEncoder/Encoder/encoder_layer7/Relu?
8AutoEncoder/Encoder/encoder_layer8/MatMul/ReadVariableOpReadVariableOpAautoencoder_encoder_encoder_layer8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02:
8AutoEncoder/Encoder/encoder_layer8/MatMul/ReadVariableOp?
)AutoEncoder/Encoder/encoder_layer8/MatMulMatMul5AutoEncoder/Encoder/encoder_layer7/Relu:activations:0@AutoEncoder/Encoder/encoder_layer8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2+
)AutoEncoder/Encoder/encoder_layer8/MatMul?
9AutoEncoder/Encoder/encoder_layer8/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_encoder_encoder_layer8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02;
9AutoEncoder/Encoder/encoder_layer8/BiasAdd/ReadVariableOp?
*AutoEncoder/Encoder/encoder_layer8/BiasAddBiasAdd3AutoEncoder/Encoder/encoder_layer8/MatMul:product:0AAutoEncoder/Encoder/encoder_layer8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2,
*AutoEncoder/Encoder/encoder_layer8/BiasAdd?
'AutoEncoder/Encoder/encoder_layer8/ReluRelu3AutoEncoder/Encoder/encoder_layer8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2)
'AutoEncoder/Encoder/encoder_layer8/Relu?
;AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOpReadVariableOpDautoencoder_encoder_encoder_layer9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02=
;AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp?
2AutoEncoder/Encoder/encoder_layer9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2AutoEncoder/Encoder/encoder_layer9/batchnorm/add/y?
0AutoEncoder/Encoder/encoder_layer9/batchnorm/addAddV2CAutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp:value:0;AutoEncoder/Encoder/encoder_layer9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@22
0AutoEncoder/Encoder/encoder_layer9/batchnorm/add?
2AutoEncoder/Encoder/encoder_layer9/batchnorm/RsqrtRsqrt4AutoEncoder/Encoder/encoder_layer9/batchnorm/add:z:0*
T0*
_output_shapes
:@24
2AutoEncoder/Encoder/encoder_layer9/batchnorm/Rsqrt?
?AutoEncoder/Encoder/encoder_layer9/batchnorm/mul/ReadVariableOpReadVariableOpHautoencoder_encoder_encoder_layer9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02A
?AutoEncoder/Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp?
0AutoEncoder/Encoder/encoder_layer9/batchnorm/mulMul6AutoEncoder/Encoder/encoder_layer9/batchnorm/Rsqrt:y:0GAutoEncoder/Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@22
0AutoEncoder/Encoder/encoder_layer9/batchnorm/mul?
2AutoEncoder/Encoder/encoder_layer9/batchnorm/mul_1Mul5AutoEncoder/Encoder/encoder_layer8/Relu:activations:04AutoEncoder/Encoder/encoder_layer9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@24
2AutoEncoder/Encoder/encoder_layer9/batchnorm/mul_1?
=AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp_1ReadVariableOpFautoencoder_encoder_encoder_layer9_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02?
=AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp_1?
2AutoEncoder/Encoder/encoder_layer9/batchnorm/mul_2MulEAutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp_1:value:04AutoEncoder/Encoder/encoder_layer9/batchnorm/mul:z:0*
T0*
_output_shapes
:@24
2AutoEncoder/Encoder/encoder_layer9/batchnorm/mul_2?
=AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp_2ReadVariableOpFautoencoder_encoder_encoder_layer9_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02?
=AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp_2?
0AutoEncoder/Encoder/encoder_layer9/batchnorm/subSubEAutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp_2:value:06AutoEncoder/Encoder/encoder_layer9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@22
0AutoEncoder/Encoder/encoder_layer9/batchnorm/sub?
2AutoEncoder/Encoder/encoder_layer9/batchnorm/add_1AddV26AutoEncoder/Encoder/encoder_layer9/batchnorm/mul_1:z:04AutoEncoder/Encoder/encoder_layer9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@24
2AutoEncoder/Encoder/encoder_layer9/batchnorm/add_1?
,AutoEncoder/Encoder/encoder_layer10/IdentityIdentity6AutoEncoder/Encoder/encoder_layer9/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????@2.
,AutoEncoder/Encoder/encoder_layer10/Identity?
8AutoEncoder/Encoder/output_encoder/MatMul/ReadVariableOpReadVariableOpAautoencoder_encoder_output_encoder_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02:
8AutoEncoder/Encoder/output_encoder/MatMul/ReadVariableOp?
)AutoEncoder/Encoder/output_encoder/MatMulMatMul5AutoEncoder/Encoder/encoder_layer10/Identity:output:0@AutoEncoder/Encoder/output_encoder/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2+
)AutoEncoder/Encoder/output_encoder/MatMul?
9AutoEncoder/Encoder/output_encoder/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_encoder_output_encoder_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02;
9AutoEncoder/Encoder/output_encoder/BiasAdd/ReadVariableOp?
*AutoEncoder/Encoder/output_encoder/BiasAddBiasAdd3AutoEncoder/Encoder/output_encoder/MatMul:product:0AAutoEncoder/Encoder/output_encoder/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2,
*AutoEncoder/Encoder/output_encoder/BiasAdd?
'AutoEncoder/Encoder/output_encoder/ReluRelu3AutoEncoder/Encoder/output_encoder/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2)
'AutoEncoder/Encoder/output_encoder/Relu?
8AutoEncoder/Decoder/decoder_layer1/MatMul/ReadVariableOpReadVariableOpAautoencoder_decoder_decoder_layer1_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02:
8AutoEncoder/Decoder/decoder_layer1/MatMul/ReadVariableOp?
)AutoEncoder/Decoder/decoder_layer1/MatMulMatMul5AutoEncoder/Encoder/output_encoder/Relu:activations:0@AutoEncoder/Decoder/decoder_layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)AutoEncoder/Decoder/decoder_layer1/MatMul?
9AutoEncoder/Decoder/decoder_layer1/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_decoder_decoder_layer1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9AutoEncoder/Decoder/decoder_layer1/BiasAdd/ReadVariableOp?
*AutoEncoder/Decoder/decoder_layer1/BiasAddBiasAdd3AutoEncoder/Decoder/decoder_layer1/MatMul:product:0AAutoEncoder/Decoder/decoder_layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*AutoEncoder/Decoder/decoder_layer1/BiasAdd?
'AutoEncoder/Decoder/decoder_layer1/ReluRelu3AutoEncoder/Decoder/decoder_layer1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2)
'AutoEncoder/Decoder/decoder_layer1/Relu?
8AutoEncoder/Decoder/decoder_layer2/MatMul/ReadVariableOpReadVariableOpAautoencoder_decoder_decoder_layer2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02:
8AutoEncoder/Decoder/decoder_layer2/MatMul/ReadVariableOp?
)AutoEncoder/Decoder/decoder_layer2/MatMulMatMul5AutoEncoder/Decoder/decoder_layer1/Relu:activations:0@AutoEncoder/Decoder/decoder_layer2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)AutoEncoder/Decoder/decoder_layer2/MatMul?
9AutoEncoder/Decoder/decoder_layer2/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_decoder_decoder_layer2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9AutoEncoder/Decoder/decoder_layer2/BiasAdd/ReadVariableOp?
*AutoEncoder/Decoder/decoder_layer2/BiasAddBiasAdd3AutoEncoder/Decoder/decoder_layer2/MatMul:product:0AAutoEncoder/Decoder/decoder_layer2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*AutoEncoder/Decoder/decoder_layer2/BiasAdd?
'AutoEncoder/Decoder/decoder_layer2/ReluRelu3AutoEncoder/Decoder/decoder_layer2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2)
'AutoEncoder/Decoder/decoder_layer2/Relu?
;AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOpReadVariableOpDautoencoder_decoder_decoder_layer3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp?
2AutoEncoder/Decoder/decoder_layer3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2AutoEncoder/Decoder/decoder_layer3/batchnorm/add/y?
0AutoEncoder/Decoder/decoder_layer3/batchnorm/addAddV2CAutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp:value:0;AutoEncoder/Decoder/decoder_layer3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?22
0AutoEncoder/Decoder/decoder_layer3/batchnorm/add?
2AutoEncoder/Decoder/decoder_layer3/batchnorm/RsqrtRsqrt4AutoEncoder/Decoder/decoder_layer3/batchnorm/add:z:0*
T0*
_output_shapes	
:?24
2AutoEncoder/Decoder/decoder_layer3/batchnorm/Rsqrt?
?AutoEncoder/Decoder/decoder_layer3/batchnorm/mul/ReadVariableOpReadVariableOpHautoencoder_decoder_decoder_layer3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02A
?AutoEncoder/Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp?
0AutoEncoder/Decoder/decoder_layer3/batchnorm/mulMul6AutoEncoder/Decoder/decoder_layer3/batchnorm/Rsqrt:y:0GAutoEncoder/Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?22
0AutoEncoder/Decoder/decoder_layer3/batchnorm/mul?
2AutoEncoder/Decoder/decoder_layer3/batchnorm/mul_1Mul5AutoEncoder/Decoder/decoder_layer2/Relu:activations:04AutoEncoder/Decoder/decoder_layer3/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????24
2AutoEncoder/Decoder/decoder_layer3/batchnorm/mul_1?
=AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp_1ReadVariableOpFautoencoder_decoder_decoder_layer3_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02?
=AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp_1?
2AutoEncoder/Decoder/decoder_layer3/batchnorm/mul_2MulEAutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp_1:value:04AutoEncoder/Decoder/decoder_layer3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?24
2AutoEncoder/Decoder/decoder_layer3/batchnorm/mul_2?
=AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp_2ReadVariableOpFautoencoder_decoder_decoder_layer3_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02?
=AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp_2?
0AutoEncoder/Decoder/decoder_layer3/batchnorm/subSubEAutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp_2:value:06AutoEncoder/Decoder/decoder_layer3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?22
0AutoEncoder/Decoder/decoder_layer3/batchnorm/sub?
2AutoEncoder/Decoder/decoder_layer3/batchnorm/add_1AddV26AutoEncoder/Decoder/decoder_layer3/batchnorm/mul_1:z:04AutoEncoder/Decoder/decoder_layer3/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????24
2AutoEncoder/Decoder/decoder_layer3/batchnorm/add_1?
+AutoEncoder/Decoder/decoder_layer4/IdentityIdentity6AutoEncoder/Decoder/decoder_layer3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2-
+AutoEncoder/Decoder/decoder_layer4/Identity?
8AutoEncoder/Decoder/decoder_layer5/MatMul/ReadVariableOpReadVariableOpAautoencoder_decoder_decoder_layer5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02:
8AutoEncoder/Decoder/decoder_layer5/MatMul/ReadVariableOp?
)AutoEncoder/Decoder/decoder_layer5/MatMulMatMul4AutoEncoder/Decoder/decoder_layer4/Identity:output:0@AutoEncoder/Decoder/decoder_layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)AutoEncoder/Decoder/decoder_layer5/MatMul?
9AutoEncoder/Decoder/decoder_layer5/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_decoder_decoder_layer5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9AutoEncoder/Decoder/decoder_layer5/BiasAdd/ReadVariableOp?
*AutoEncoder/Decoder/decoder_layer5/BiasAddBiasAdd3AutoEncoder/Decoder/decoder_layer5/MatMul:product:0AAutoEncoder/Decoder/decoder_layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*AutoEncoder/Decoder/decoder_layer5/BiasAdd?
'AutoEncoder/Decoder/decoder_layer5/ReluRelu3AutoEncoder/Decoder/decoder_layer5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2)
'AutoEncoder/Decoder/decoder_layer5/Relu?
8AutoEncoder/Decoder/decoder_layer6/MatMul/ReadVariableOpReadVariableOpAautoencoder_decoder_decoder_layer6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02:
8AutoEncoder/Decoder/decoder_layer6/MatMul/ReadVariableOp?
)AutoEncoder/Decoder/decoder_layer6/MatMulMatMul5AutoEncoder/Decoder/decoder_layer5/Relu:activations:0@AutoEncoder/Decoder/decoder_layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)AutoEncoder/Decoder/decoder_layer6/MatMul?
9AutoEncoder/Decoder/decoder_layer6/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_decoder_decoder_layer6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9AutoEncoder/Decoder/decoder_layer6/BiasAdd/ReadVariableOp?
*AutoEncoder/Decoder/decoder_layer6/BiasAddBiasAdd3AutoEncoder/Decoder/decoder_layer6/MatMul:product:0AAutoEncoder/Decoder/decoder_layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*AutoEncoder/Decoder/decoder_layer6/BiasAdd?
'AutoEncoder/Decoder/decoder_layer6/ReluRelu3AutoEncoder/Decoder/decoder_layer6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2)
'AutoEncoder/Decoder/decoder_layer6/Relu?
8AutoEncoder/Decoder/decoder_layer7/MatMul/ReadVariableOpReadVariableOpAautoencoder_decoder_decoder_layer7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02:
8AutoEncoder/Decoder/decoder_layer7/MatMul/ReadVariableOp?
)AutoEncoder/Decoder/decoder_layer7/MatMulMatMul5AutoEncoder/Decoder/decoder_layer6/Relu:activations:0@AutoEncoder/Decoder/decoder_layer7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)AutoEncoder/Decoder/decoder_layer7/MatMul?
9AutoEncoder/Decoder/decoder_layer7/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_decoder_decoder_layer7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9AutoEncoder/Decoder/decoder_layer7/BiasAdd/ReadVariableOp?
*AutoEncoder/Decoder/decoder_layer7/BiasAddBiasAdd3AutoEncoder/Decoder/decoder_layer7/MatMul:product:0AAutoEncoder/Decoder/decoder_layer7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*AutoEncoder/Decoder/decoder_layer7/BiasAdd?
'AutoEncoder/Decoder/decoder_layer7/ReluRelu3AutoEncoder/Decoder/decoder_layer7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2)
'AutoEncoder/Decoder/decoder_layer7/Relu?
8AutoEncoder/Decoder/decoder_layer8/MatMul/ReadVariableOpReadVariableOpAautoencoder_decoder_decoder_layer8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02:
8AutoEncoder/Decoder/decoder_layer8/MatMul/ReadVariableOp?
)AutoEncoder/Decoder/decoder_layer8/MatMulMatMul5AutoEncoder/Decoder/decoder_layer7/Relu:activations:0@AutoEncoder/Decoder/decoder_layer8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2+
)AutoEncoder/Decoder/decoder_layer8/MatMul?
9AutoEncoder/Decoder/decoder_layer8/BiasAdd/ReadVariableOpReadVariableOpBautoencoder_decoder_decoder_layer8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02;
9AutoEncoder/Decoder/decoder_layer8/BiasAdd/ReadVariableOp?
*AutoEncoder/Decoder/decoder_layer8/BiasAddBiasAdd3AutoEncoder/Decoder/decoder_layer8/MatMul:product:0AAutoEncoder/Decoder/decoder_layer8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2,
*AutoEncoder/Decoder/decoder_layer8/BiasAdd?
'AutoEncoder/Decoder/decoder_layer8/ReluRelu3AutoEncoder/Decoder/decoder_layer8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2)
'AutoEncoder/Decoder/decoder_layer8/Relu?
;AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOpReadVariableOpDautoencoder_decoder_decoder_layer9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02=
;AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp?
2AutoEncoder/Decoder/decoder_layer9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2AutoEncoder/Decoder/decoder_layer9/batchnorm/add/y?
0AutoEncoder/Decoder/decoder_layer9/batchnorm/addAddV2CAutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp:value:0;AutoEncoder/Decoder/decoder_layer9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@22
0AutoEncoder/Decoder/decoder_layer9/batchnorm/add?
2AutoEncoder/Decoder/decoder_layer9/batchnorm/RsqrtRsqrt4AutoEncoder/Decoder/decoder_layer9/batchnorm/add:z:0*
T0*
_output_shapes
:@24
2AutoEncoder/Decoder/decoder_layer9/batchnorm/Rsqrt?
?AutoEncoder/Decoder/decoder_layer9/batchnorm/mul/ReadVariableOpReadVariableOpHautoencoder_decoder_decoder_layer9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02A
?AutoEncoder/Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp?
0AutoEncoder/Decoder/decoder_layer9/batchnorm/mulMul6AutoEncoder/Decoder/decoder_layer9/batchnorm/Rsqrt:y:0GAutoEncoder/Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@22
0AutoEncoder/Decoder/decoder_layer9/batchnorm/mul?
2AutoEncoder/Decoder/decoder_layer9/batchnorm/mul_1Mul5AutoEncoder/Decoder/decoder_layer8/Relu:activations:04AutoEncoder/Decoder/decoder_layer9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@24
2AutoEncoder/Decoder/decoder_layer9/batchnorm/mul_1?
=AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp_1ReadVariableOpFautoencoder_decoder_decoder_layer9_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02?
=AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp_1?
2AutoEncoder/Decoder/decoder_layer9/batchnorm/mul_2MulEAutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp_1:value:04AutoEncoder/Decoder/decoder_layer9/batchnorm/mul:z:0*
T0*
_output_shapes
:@24
2AutoEncoder/Decoder/decoder_layer9/batchnorm/mul_2?
=AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp_2ReadVariableOpFautoencoder_decoder_decoder_layer9_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02?
=AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp_2?
0AutoEncoder/Decoder/decoder_layer9/batchnorm/subSubEAutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp_2:value:06AutoEncoder/Decoder/decoder_layer9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@22
0AutoEncoder/Decoder/decoder_layer9/batchnorm/sub?
2AutoEncoder/Decoder/decoder_layer9/batchnorm/add_1AddV26AutoEncoder/Decoder/decoder_layer9/batchnorm/mul_1:z:04AutoEncoder/Decoder/decoder_layer9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@24
2AutoEncoder/Decoder/decoder_layer9/batchnorm/add_1?
,AutoEncoder/Decoder/decoder_layer10/IdentityIdentity6AutoEncoder/Decoder/decoder_layer9/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????@2.
,AutoEncoder/Decoder/decoder_layer10/Identity?
6AutoEncoder/Decoder/output_layer/MatMul/ReadVariableOpReadVariableOp?autoencoder_decoder_output_layer_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype028
6AutoEncoder/Decoder/output_layer/MatMul/ReadVariableOp?
'AutoEncoder/Decoder/output_layer/MatMulMatMul5AutoEncoder/Decoder/decoder_layer10/Identity:output:0>AutoEncoder/Decoder/output_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'AutoEncoder/Decoder/output_layer/MatMul?
7AutoEncoder/Decoder/output_layer/BiasAdd/ReadVariableOpReadVariableOp@autoencoder_decoder_output_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype029
7AutoEncoder/Decoder/output_layer/BiasAdd/ReadVariableOp?
(AutoEncoder/Decoder/output_layer/BiasAddBiasAdd1AutoEncoder/Decoder/output_layer/MatMul:product:0?AutoEncoder/Decoder/output_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(AutoEncoder/Decoder/output_layer/BiasAdd?
(AutoEncoder/Decoder/output_layer/SigmoidSigmoid1AutoEncoder/Decoder/output_layer/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2*
(AutoEncoder/Decoder/output_layer/Sigmoid?
IdentityIdentity,AutoEncoder/Decoder/output_layer/Sigmoid:y:0:^AutoEncoder/Decoder/decoder_layer1/BiasAdd/ReadVariableOp9^AutoEncoder/Decoder/decoder_layer1/MatMul/ReadVariableOp:^AutoEncoder/Decoder/decoder_layer2/BiasAdd/ReadVariableOp9^AutoEncoder/Decoder/decoder_layer2/MatMul/ReadVariableOp<^AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp>^AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp_1>^AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp_2@^AutoEncoder/Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp:^AutoEncoder/Decoder/decoder_layer5/BiasAdd/ReadVariableOp9^AutoEncoder/Decoder/decoder_layer5/MatMul/ReadVariableOp:^AutoEncoder/Decoder/decoder_layer6/BiasAdd/ReadVariableOp9^AutoEncoder/Decoder/decoder_layer6/MatMul/ReadVariableOp:^AutoEncoder/Decoder/decoder_layer7/BiasAdd/ReadVariableOp9^AutoEncoder/Decoder/decoder_layer7/MatMul/ReadVariableOp:^AutoEncoder/Decoder/decoder_layer8/BiasAdd/ReadVariableOp9^AutoEncoder/Decoder/decoder_layer8/MatMul/ReadVariableOp<^AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp>^AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp_1>^AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp_2@^AutoEncoder/Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp8^AutoEncoder/Decoder/output_layer/BiasAdd/ReadVariableOp7^AutoEncoder/Decoder/output_layer/MatMul/ReadVariableOp:^AutoEncoder/Encoder/encoder_layer1/BiasAdd/ReadVariableOp9^AutoEncoder/Encoder/encoder_layer1/MatMul/ReadVariableOp:^AutoEncoder/Encoder/encoder_layer2/BiasAdd/ReadVariableOp9^AutoEncoder/Encoder/encoder_layer2/MatMul/ReadVariableOp<^AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp>^AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp_1>^AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp_2@^AutoEncoder/Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp:^AutoEncoder/Encoder/encoder_layer5/BiasAdd/ReadVariableOp9^AutoEncoder/Encoder/encoder_layer5/MatMul/ReadVariableOp:^AutoEncoder/Encoder/encoder_layer6/BiasAdd/ReadVariableOp9^AutoEncoder/Encoder/encoder_layer6/MatMul/ReadVariableOp:^AutoEncoder/Encoder/encoder_layer7/BiasAdd/ReadVariableOp9^AutoEncoder/Encoder/encoder_layer7/MatMul/ReadVariableOp:^AutoEncoder/Encoder/encoder_layer8/BiasAdd/ReadVariableOp9^AutoEncoder/Encoder/encoder_layer8/MatMul/ReadVariableOp<^AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp>^AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp_1>^AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp_2@^AutoEncoder/Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp:^AutoEncoder/Encoder/output_encoder/BiasAdd/ReadVariableOp9^AutoEncoder/Encoder/output_encoder/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????::::::::::::::::::::::::::::::::::::::::::::2v
9AutoEncoder/Decoder/decoder_layer1/BiasAdd/ReadVariableOp9AutoEncoder/Decoder/decoder_layer1/BiasAdd/ReadVariableOp2t
8AutoEncoder/Decoder/decoder_layer1/MatMul/ReadVariableOp8AutoEncoder/Decoder/decoder_layer1/MatMul/ReadVariableOp2v
9AutoEncoder/Decoder/decoder_layer2/BiasAdd/ReadVariableOp9AutoEncoder/Decoder/decoder_layer2/BiasAdd/ReadVariableOp2t
8AutoEncoder/Decoder/decoder_layer2/MatMul/ReadVariableOp8AutoEncoder/Decoder/decoder_layer2/MatMul/ReadVariableOp2z
;AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp;AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp2~
=AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp_1=AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp_12~
=AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp_2=AutoEncoder/Decoder/decoder_layer3/batchnorm/ReadVariableOp_22?
?AutoEncoder/Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp?AutoEncoder/Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp2v
9AutoEncoder/Decoder/decoder_layer5/BiasAdd/ReadVariableOp9AutoEncoder/Decoder/decoder_layer5/BiasAdd/ReadVariableOp2t
8AutoEncoder/Decoder/decoder_layer5/MatMul/ReadVariableOp8AutoEncoder/Decoder/decoder_layer5/MatMul/ReadVariableOp2v
9AutoEncoder/Decoder/decoder_layer6/BiasAdd/ReadVariableOp9AutoEncoder/Decoder/decoder_layer6/BiasAdd/ReadVariableOp2t
8AutoEncoder/Decoder/decoder_layer6/MatMul/ReadVariableOp8AutoEncoder/Decoder/decoder_layer6/MatMul/ReadVariableOp2v
9AutoEncoder/Decoder/decoder_layer7/BiasAdd/ReadVariableOp9AutoEncoder/Decoder/decoder_layer7/BiasAdd/ReadVariableOp2t
8AutoEncoder/Decoder/decoder_layer7/MatMul/ReadVariableOp8AutoEncoder/Decoder/decoder_layer7/MatMul/ReadVariableOp2v
9AutoEncoder/Decoder/decoder_layer8/BiasAdd/ReadVariableOp9AutoEncoder/Decoder/decoder_layer8/BiasAdd/ReadVariableOp2t
8AutoEncoder/Decoder/decoder_layer8/MatMul/ReadVariableOp8AutoEncoder/Decoder/decoder_layer8/MatMul/ReadVariableOp2z
;AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp;AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp2~
=AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp_1=AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp_12~
=AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp_2=AutoEncoder/Decoder/decoder_layer9/batchnorm/ReadVariableOp_22?
?AutoEncoder/Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp?AutoEncoder/Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp2r
7AutoEncoder/Decoder/output_layer/BiasAdd/ReadVariableOp7AutoEncoder/Decoder/output_layer/BiasAdd/ReadVariableOp2p
6AutoEncoder/Decoder/output_layer/MatMul/ReadVariableOp6AutoEncoder/Decoder/output_layer/MatMul/ReadVariableOp2v
9AutoEncoder/Encoder/encoder_layer1/BiasAdd/ReadVariableOp9AutoEncoder/Encoder/encoder_layer1/BiasAdd/ReadVariableOp2t
8AutoEncoder/Encoder/encoder_layer1/MatMul/ReadVariableOp8AutoEncoder/Encoder/encoder_layer1/MatMul/ReadVariableOp2v
9AutoEncoder/Encoder/encoder_layer2/BiasAdd/ReadVariableOp9AutoEncoder/Encoder/encoder_layer2/BiasAdd/ReadVariableOp2t
8AutoEncoder/Encoder/encoder_layer2/MatMul/ReadVariableOp8AutoEncoder/Encoder/encoder_layer2/MatMul/ReadVariableOp2z
;AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp;AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp2~
=AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp_1=AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp_12~
=AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp_2=AutoEncoder/Encoder/encoder_layer3/batchnorm/ReadVariableOp_22?
?AutoEncoder/Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp?AutoEncoder/Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp2v
9AutoEncoder/Encoder/encoder_layer5/BiasAdd/ReadVariableOp9AutoEncoder/Encoder/encoder_layer5/BiasAdd/ReadVariableOp2t
8AutoEncoder/Encoder/encoder_layer5/MatMul/ReadVariableOp8AutoEncoder/Encoder/encoder_layer5/MatMul/ReadVariableOp2v
9AutoEncoder/Encoder/encoder_layer6/BiasAdd/ReadVariableOp9AutoEncoder/Encoder/encoder_layer6/BiasAdd/ReadVariableOp2t
8AutoEncoder/Encoder/encoder_layer6/MatMul/ReadVariableOp8AutoEncoder/Encoder/encoder_layer6/MatMul/ReadVariableOp2v
9AutoEncoder/Encoder/encoder_layer7/BiasAdd/ReadVariableOp9AutoEncoder/Encoder/encoder_layer7/BiasAdd/ReadVariableOp2t
8AutoEncoder/Encoder/encoder_layer7/MatMul/ReadVariableOp8AutoEncoder/Encoder/encoder_layer7/MatMul/ReadVariableOp2v
9AutoEncoder/Encoder/encoder_layer8/BiasAdd/ReadVariableOp9AutoEncoder/Encoder/encoder_layer8/BiasAdd/ReadVariableOp2t
8AutoEncoder/Encoder/encoder_layer8/MatMul/ReadVariableOp8AutoEncoder/Encoder/encoder_layer8/MatMul/ReadVariableOp2z
;AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp;AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp2~
=AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp_1=AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp_12~
=AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp_2=AutoEncoder/Encoder/encoder_layer9/batchnorm/ReadVariableOp_22?
?AutoEncoder/Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp?AutoEncoder/Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp2v
9AutoEncoder/Encoder/output_encoder/BiasAdd/ReadVariableOp9AutoEncoder/Encoder/output_encoder/BiasAdd/ReadVariableOp2t
8AutoEncoder/Encoder/output_encoder/MatMul/ReadVariableOp8AutoEncoder/Encoder/output_encoder/MatMul/ReadVariableOp:[ W
(
_output_shapes
:??????????
+
_user_specified_nameinput_autoencoder
?
?
)__inference_Encoder_layer_call_fn_8023013

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_80202282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
0__inference_decoder_layer4_layer_call_fn_8023882

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer4_layer_call_and_return_conditional_losses_80207682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
.__inference_output_layer_layer_call_fn_8024096

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_80209702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_Encoder_layer_call_fn_8020275
input_encoder
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_encoderunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_80202282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
(
_output_shapes
:??????????
'
_user_specified_nameinput_encoder
?	
?
K__inference_encoder_layer5_layer_call_and_return_conditional_losses_8023540

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
K__inference_decoder_layer8_layer_call_and_return_conditional_losses_8020878

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
j
K__inference_decoder_layer4_layer_call_and_return_conditional_losses_8020768

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?@
?	
D__inference_Decoder_layer_call_and_return_conditional_losses_8021108

inputs
decoder_layer1_8021052
decoder_layer1_8021054
decoder_layer2_8021057
decoder_layer2_8021059
decoder_layer3_8021062
decoder_layer3_8021064
decoder_layer3_8021066
decoder_layer3_8021068
decoder_layer5_8021072
decoder_layer5_8021074
decoder_layer6_8021077
decoder_layer6_8021079
decoder_layer7_8021082
decoder_layer7_8021084
decoder_layer8_8021087
decoder_layer8_8021089
decoder_layer9_8021092
decoder_layer9_8021094
decoder_layer9_8021096
decoder_layer9_8021098
output_layer_8021102
output_layer_8021104
identity??&decoder_layer1/StatefulPartitionedCall?'decoder_layer10/StatefulPartitionedCall?&decoder_layer2/StatefulPartitionedCall?&decoder_layer3/StatefulPartitionedCall?&decoder_layer4/StatefulPartitionedCall?&decoder_layer5/StatefulPartitionedCall?&decoder_layer6/StatefulPartitionedCall?&decoder_layer7/StatefulPartitionedCall?&decoder_layer8/StatefulPartitionedCall?&decoder_layer9/StatefulPartitionedCall?$output_layer/StatefulPartitionedCall?
&decoder_layer1/StatefulPartitionedCallStatefulPartitionedCallinputsdecoder_layer1_8021052decoder_layer1_8021054*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer1_layer_call_and_return_conditional_losses_80206782(
&decoder_layer1/StatefulPartitionedCall?
&decoder_layer2/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer1/StatefulPartitionedCall:output:0decoder_layer2_8021057decoder_layer2_8021059*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer2_layer_call_and_return_conditional_losses_80207052(
&decoder_layer2/StatefulPartitionedCall?
&decoder_layer3/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer2/StatefulPartitionedCall:output:0decoder_layer3_8021062decoder_layer3_8021064decoder_layer3_8021066decoder_layer3_8021068*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer3_layer_call_and_return_conditional_losses_80204792(
&decoder_layer3/StatefulPartitionedCall?
&decoder_layer4/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer4_layer_call_and_return_conditional_losses_80207682(
&decoder_layer4/StatefulPartitionedCall?
&decoder_layer5/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer4/StatefulPartitionedCall:output:0decoder_layer5_8021072decoder_layer5_8021074*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer5_layer_call_and_return_conditional_losses_80207972(
&decoder_layer5/StatefulPartitionedCall?
&decoder_layer6/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer5/StatefulPartitionedCall:output:0decoder_layer6_8021077decoder_layer6_8021079*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer6_layer_call_and_return_conditional_losses_80208242(
&decoder_layer6/StatefulPartitionedCall?
&decoder_layer7/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer6/StatefulPartitionedCall:output:0decoder_layer7_8021082decoder_layer7_8021084*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer7_layer_call_and_return_conditional_losses_80208512(
&decoder_layer7/StatefulPartitionedCall?
&decoder_layer8/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer7/StatefulPartitionedCall:output:0decoder_layer8_8021087decoder_layer8_8021089*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer8_layer_call_and_return_conditional_losses_80208782(
&decoder_layer8/StatefulPartitionedCall?
&decoder_layer9/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer8/StatefulPartitionedCall:output:0decoder_layer9_8021092decoder_layer9_8021094decoder_layer9_8021096decoder_layer9_8021098*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer9_layer_call_and_return_conditional_losses_80206192(
&decoder_layer9/StatefulPartitionedCall?
'decoder_layer10/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer9/StatefulPartitionedCall:output:0'^decoder_layer4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_decoder_layer10_layer_call_and_return_conditional_losses_80209412)
'decoder_layer10/StatefulPartitionedCall?
$output_layer/StatefulPartitionedCallStatefulPartitionedCall0decoder_layer10/StatefulPartitionedCall:output:0output_layer_8021102output_layer_8021104*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_80209702&
$output_layer/StatefulPartitionedCall?
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0'^decoder_layer1/StatefulPartitionedCall(^decoder_layer10/StatefulPartitionedCall'^decoder_layer2/StatefulPartitionedCall'^decoder_layer3/StatefulPartitionedCall'^decoder_layer4/StatefulPartitionedCall'^decoder_layer5/StatefulPartitionedCall'^decoder_layer6/StatefulPartitionedCall'^decoder_layer7/StatefulPartitionedCall'^decoder_layer8/StatefulPartitionedCall'^decoder_layer9/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????
::::::::::::::::::::::2P
&decoder_layer1/StatefulPartitionedCall&decoder_layer1/StatefulPartitionedCall2R
'decoder_layer10/StatefulPartitionedCall'decoder_layer10/StatefulPartitionedCall2P
&decoder_layer2/StatefulPartitionedCall&decoder_layer2/StatefulPartitionedCall2P
&decoder_layer3/StatefulPartitionedCall&decoder_layer3/StatefulPartitionedCall2P
&decoder_layer4/StatefulPartitionedCall&decoder_layer4/StatefulPartitionedCall2P
&decoder_layer5/StatefulPartitionedCall&decoder_layer5/StatefulPartitionedCall2P
&decoder_layer6/StatefulPartitionedCall&decoder_layer6/StatefulPartitionedCall2P
&decoder_layer7/StatefulPartitionedCall&decoder_layer7/StatefulPartitionedCall2P
&decoder_layer8/StatefulPartitionedCall&decoder_layer8/StatefulPartitionedCall2P
&decoder_layer9/StatefulPartitionedCall&decoder_layer9/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?	
?
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_8023391

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?@
?	
D__inference_Decoder_layer_call_and_return_conditional_losses_8020987
input_decoder
decoder_layer1_8020689
decoder_layer1_8020691
decoder_layer2_8020716
decoder_layer2_8020718
decoder_layer3_8020747
decoder_layer3_8020749
decoder_layer3_8020751
decoder_layer3_8020753
decoder_layer5_8020808
decoder_layer5_8020810
decoder_layer6_8020835
decoder_layer6_8020837
decoder_layer7_8020862
decoder_layer7_8020864
decoder_layer8_8020889
decoder_layer8_8020891
decoder_layer9_8020920
decoder_layer9_8020922
decoder_layer9_8020924
decoder_layer9_8020926
output_layer_8020981
output_layer_8020983
identity??&decoder_layer1/StatefulPartitionedCall?'decoder_layer10/StatefulPartitionedCall?&decoder_layer2/StatefulPartitionedCall?&decoder_layer3/StatefulPartitionedCall?&decoder_layer4/StatefulPartitionedCall?&decoder_layer5/StatefulPartitionedCall?&decoder_layer6/StatefulPartitionedCall?&decoder_layer7/StatefulPartitionedCall?&decoder_layer8/StatefulPartitionedCall?&decoder_layer9/StatefulPartitionedCall?$output_layer/StatefulPartitionedCall?
&decoder_layer1/StatefulPartitionedCallStatefulPartitionedCallinput_decoderdecoder_layer1_8020689decoder_layer1_8020691*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer1_layer_call_and_return_conditional_losses_80206782(
&decoder_layer1/StatefulPartitionedCall?
&decoder_layer2/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer1/StatefulPartitionedCall:output:0decoder_layer2_8020716decoder_layer2_8020718*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer2_layer_call_and_return_conditional_losses_80207052(
&decoder_layer2/StatefulPartitionedCall?
&decoder_layer3/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer2/StatefulPartitionedCall:output:0decoder_layer3_8020747decoder_layer3_8020749decoder_layer3_8020751decoder_layer3_8020753*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer3_layer_call_and_return_conditional_losses_80204792(
&decoder_layer3/StatefulPartitionedCall?
&decoder_layer4/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer4_layer_call_and_return_conditional_losses_80207682(
&decoder_layer4/StatefulPartitionedCall?
&decoder_layer5/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer4/StatefulPartitionedCall:output:0decoder_layer5_8020808decoder_layer5_8020810*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer5_layer_call_and_return_conditional_losses_80207972(
&decoder_layer5/StatefulPartitionedCall?
&decoder_layer6/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer5/StatefulPartitionedCall:output:0decoder_layer6_8020835decoder_layer6_8020837*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer6_layer_call_and_return_conditional_losses_80208242(
&decoder_layer6/StatefulPartitionedCall?
&decoder_layer7/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer6/StatefulPartitionedCall:output:0decoder_layer7_8020862decoder_layer7_8020864*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer7_layer_call_and_return_conditional_losses_80208512(
&decoder_layer7/StatefulPartitionedCall?
&decoder_layer8/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer7/StatefulPartitionedCall:output:0decoder_layer8_8020889decoder_layer8_8020891*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer8_layer_call_and_return_conditional_losses_80208782(
&decoder_layer8/StatefulPartitionedCall?
&decoder_layer9/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer8/StatefulPartitionedCall:output:0decoder_layer9_8020920decoder_layer9_8020922decoder_layer9_8020924decoder_layer9_8020926*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer9_layer_call_and_return_conditional_losses_80206192(
&decoder_layer9/StatefulPartitionedCall?
'decoder_layer10/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer9/StatefulPartitionedCall:output:0'^decoder_layer4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_decoder_layer10_layer_call_and_return_conditional_losses_80209412)
'decoder_layer10/StatefulPartitionedCall?
$output_layer/StatefulPartitionedCallStatefulPartitionedCall0decoder_layer10/StatefulPartitionedCall:output:0output_layer_8020981output_layer_8020983*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_80209702&
$output_layer/StatefulPartitionedCall?
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0'^decoder_layer1/StatefulPartitionedCall(^decoder_layer10/StatefulPartitionedCall'^decoder_layer2/StatefulPartitionedCall'^decoder_layer3/StatefulPartitionedCall'^decoder_layer4/StatefulPartitionedCall'^decoder_layer5/StatefulPartitionedCall'^decoder_layer6/StatefulPartitionedCall'^decoder_layer7/StatefulPartitionedCall'^decoder_layer8/StatefulPartitionedCall'^decoder_layer9/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????
::::::::::::::::::::::2P
&decoder_layer1/StatefulPartitionedCall&decoder_layer1/StatefulPartitionedCall2R
'decoder_layer10/StatefulPartitionedCall'decoder_layer10/StatefulPartitionedCall2P
&decoder_layer2/StatefulPartitionedCall&decoder_layer2/StatefulPartitionedCall2P
&decoder_layer3/StatefulPartitionedCall&decoder_layer3/StatefulPartitionedCall2P
&decoder_layer4/StatefulPartitionedCall&decoder_layer4/StatefulPartitionedCall2P
&decoder_layer5/StatefulPartitionedCall&decoder_layer5/StatefulPartitionedCall2P
&decoder_layer6/StatefulPartitionedCall&decoder_layer6/StatefulPartitionedCall2P
&decoder_layer7/StatefulPartitionedCall&decoder_layer7/StatefulPartitionedCall2P
&decoder_layer8/StatefulPartitionedCall&decoder_layer8/StatefulPartitionedCall2P
&decoder_layer9/StatefulPartitionedCall&decoder_layer9/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:V R
'
_output_shapes
:?????????

'
_user_specified_nameinput_decoder
??
?
D__inference_Decoder_layer_call_and_return_conditional_losses_8023195

inputs1
-decoder_layer1_matmul_readvariableop_resource2
.decoder_layer1_biasadd_readvariableop_resource1
-decoder_layer2_matmul_readvariableop_resource2
.decoder_layer2_biasadd_readvariableop_resource*
&decoder_layer3_assignmovingavg_8023087,
(decoder_layer3_assignmovingavg_1_80230938
4decoder_layer3_batchnorm_mul_readvariableop_resource4
0decoder_layer3_batchnorm_readvariableop_resource1
-decoder_layer5_matmul_readvariableop_resource2
.decoder_layer5_biasadd_readvariableop_resource1
-decoder_layer6_matmul_readvariableop_resource2
.decoder_layer6_biasadd_readvariableop_resource1
-decoder_layer7_matmul_readvariableop_resource2
.decoder_layer7_biasadd_readvariableop_resource1
-decoder_layer8_matmul_readvariableop_resource2
.decoder_layer8_biasadd_readvariableop_resource*
&decoder_layer9_assignmovingavg_8023155,
(decoder_layer9_assignmovingavg_1_80231618
4decoder_layer9_batchnorm_mul_readvariableop_resource4
0decoder_layer9_batchnorm_readvariableop_resource/
+output_layer_matmul_readvariableop_resource0
,output_layer_biasadd_readvariableop_resource
identity??%decoder_layer1/BiasAdd/ReadVariableOp?$decoder_layer1/MatMul/ReadVariableOp?%decoder_layer2/BiasAdd/ReadVariableOp?$decoder_layer2/MatMul/ReadVariableOp?2decoder_layer3/AssignMovingAvg/AssignSubVariableOp?-decoder_layer3/AssignMovingAvg/ReadVariableOp?4decoder_layer3/AssignMovingAvg_1/AssignSubVariableOp?/decoder_layer3/AssignMovingAvg_1/ReadVariableOp?'decoder_layer3/batchnorm/ReadVariableOp?+decoder_layer3/batchnorm/mul/ReadVariableOp?%decoder_layer5/BiasAdd/ReadVariableOp?$decoder_layer5/MatMul/ReadVariableOp?%decoder_layer6/BiasAdd/ReadVariableOp?$decoder_layer6/MatMul/ReadVariableOp?%decoder_layer7/BiasAdd/ReadVariableOp?$decoder_layer7/MatMul/ReadVariableOp?%decoder_layer8/BiasAdd/ReadVariableOp?$decoder_layer8/MatMul/ReadVariableOp?2decoder_layer9/AssignMovingAvg/AssignSubVariableOp?-decoder_layer9/AssignMovingAvg/ReadVariableOp?4decoder_layer9/AssignMovingAvg_1/AssignSubVariableOp?/decoder_layer9/AssignMovingAvg_1/ReadVariableOp?'decoder_layer9/batchnorm/ReadVariableOp?+decoder_layer9/batchnorm/mul/ReadVariableOp?#output_layer/BiasAdd/ReadVariableOp?"output_layer/MatMul/ReadVariableOp?
$decoder_layer1/MatMul/ReadVariableOpReadVariableOp-decoder_layer1_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02&
$decoder_layer1/MatMul/ReadVariableOp?
decoder_layer1/MatMulMatMulinputs,decoder_layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer1/MatMul?
%decoder_layer1/BiasAdd/ReadVariableOpReadVariableOp.decoder_layer1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%decoder_layer1/BiasAdd/ReadVariableOp?
decoder_layer1/BiasAddBiasAdddecoder_layer1/MatMul:product:0-decoder_layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer1/BiasAdd?
decoder_layer1/ReluReludecoder_layer1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
decoder_layer1/Relu?
$decoder_layer2/MatMul/ReadVariableOpReadVariableOp-decoder_layer2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$decoder_layer2/MatMul/ReadVariableOp?
decoder_layer2/MatMulMatMul!decoder_layer1/Relu:activations:0,decoder_layer2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer2/MatMul?
%decoder_layer2/BiasAdd/ReadVariableOpReadVariableOp.decoder_layer2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%decoder_layer2/BiasAdd/ReadVariableOp?
decoder_layer2/BiasAddBiasAdddecoder_layer2/MatMul:product:0-decoder_layer2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer2/BiasAdd?
decoder_layer2/ReluReludecoder_layer2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
decoder_layer2/Relu?
-decoder_layer3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2/
-decoder_layer3/moments/mean/reduction_indices?
decoder_layer3/moments/meanMean!decoder_layer2/Relu:activations:06decoder_layer3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
decoder_layer3/moments/mean?
#decoder_layer3/moments/StopGradientStopGradient$decoder_layer3/moments/mean:output:0*
T0*
_output_shapes
:	?2%
#decoder_layer3/moments/StopGradient?
(decoder_layer3/moments/SquaredDifferenceSquaredDifference!decoder_layer2/Relu:activations:0,decoder_layer3/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2*
(decoder_layer3/moments/SquaredDifference?
1decoder_layer3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 23
1decoder_layer3/moments/variance/reduction_indices?
decoder_layer3/moments/varianceMean,decoder_layer3/moments/SquaredDifference:z:0:decoder_layer3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2!
decoder_layer3/moments/variance?
decoder_layer3/moments/SqueezeSqueeze$decoder_layer3/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2 
decoder_layer3/moments/Squeeze?
 decoder_layer3/moments/Squeeze_1Squeeze(decoder_layer3/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2"
 decoder_layer3/moments/Squeeze_1?
$decoder_layer3/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*9
_class/
-+loc:@decoder_layer3/AssignMovingAvg/8023087*
_output_shapes
: *
dtype0*
valueB
 *
?#<2&
$decoder_layer3/AssignMovingAvg/decay?
-decoder_layer3/AssignMovingAvg/ReadVariableOpReadVariableOp&decoder_layer3_assignmovingavg_8023087*
_output_shapes	
:?*
dtype02/
-decoder_layer3/AssignMovingAvg/ReadVariableOp?
"decoder_layer3/AssignMovingAvg/subSub5decoder_layer3/AssignMovingAvg/ReadVariableOp:value:0'decoder_layer3/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*9
_class/
-+loc:@decoder_layer3/AssignMovingAvg/8023087*
_output_shapes	
:?2$
"decoder_layer3/AssignMovingAvg/sub?
"decoder_layer3/AssignMovingAvg/mulMul&decoder_layer3/AssignMovingAvg/sub:z:0-decoder_layer3/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*9
_class/
-+loc:@decoder_layer3/AssignMovingAvg/8023087*
_output_shapes	
:?2$
"decoder_layer3/AssignMovingAvg/mul?
2decoder_layer3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp&decoder_layer3_assignmovingavg_8023087&decoder_layer3/AssignMovingAvg/mul:z:0.^decoder_layer3/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*9
_class/
-+loc:@decoder_layer3/AssignMovingAvg/8023087*
_output_shapes
 *
dtype024
2decoder_layer3/AssignMovingAvg/AssignSubVariableOp?
&decoder_layer3/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@decoder_layer3/AssignMovingAvg_1/8023093*
_output_shapes
: *
dtype0*
valueB
 *
?#<2(
&decoder_layer3/AssignMovingAvg_1/decay?
/decoder_layer3/AssignMovingAvg_1/ReadVariableOpReadVariableOp(decoder_layer3_assignmovingavg_1_8023093*
_output_shapes	
:?*
dtype021
/decoder_layer3/AssignMovingAvg_1/ReadVariableOp?
$decoder_layer3/AssignMovingAvg_1/subSub7decoder_layer3/AssignMovingAvg_1/ReadVariableOp:value:0)decoder_layer3/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*;
_class1
/-loc:@decoder_layer3/AssignMovingAvg_1/8023093*
_output_shapes	
:?2&
$decoder_layer3/AssignMovingAvg_1/sub?
$decoder_layer3/AssignMovingAvg_1/mulMul(decoder_layer3/AssignMovingAvg_1/sub:z:0/decoder_layer3/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*;
_class1
/-loc:@decoder_layer3/AssignMovingAvg_1/8023093*
_output_shapes	
:?2&
$decoder_layer3/AssignMovingAvg_1/mul?
4decoder_layer3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp(decoder_layer3_assignmovingavg_1_8023093(decoder_layer3/AssignMovingAvg_1/mul:z:00^decoder_layer3/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@decoder_layer3/AssignMovingAvg_1/8023093*
_output_shapes
 *
dtype026
4decoder_layer3/AssignMovingAvg_1/AssignSubVariableOp?
decoder_layer3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2 
decoder_layer3/batchnorm/add/y?
decoder_layer3/batchnorm/addAddV2)decoder_layer3/moments/Squeeze_1:output:0'decoder_layer3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
decoder_layer3/batchnorm/add?
decoder_layer3/batchnorm/RsqrtRsqrt decoder_layer3/batchnorm/add:z:0*
T0*
_output_shapes	
:?2 
decoder_layer3/batchnorm/Rsqrt?
+decoder_layer3/batchnorm/mul/ReadVariableOpReadVariableOp4decoder_layer3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+decoder_layer3/batchnorm/mul/ReadVariableOp?
decoder_layer3/batchnorm/mulMul"decoder_layer3/batchnorm/Rsqrt:y:03decoder_layer3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
decoder_layer3/batchnorm/mul?
decoder_layer3/batchnorm/mul_1Mul!decoder_layer2/Relu:activations:0 decoder_layer3/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2 
decoder_layer3/batchnorm/mul_1?
decoder_layer3/batchnorm/mul_2Mul'decoder_layer3/moments/Squeeze:output:0 decoder_layer3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2 
decoder_layer3/batchnorm/mul_2?
'decoder_layer3/batchnorm/ReadVariableOpReadVariableOp0decoder_layer3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'decoder_layer3/batchnorm/ReadVariableOp?
decoder_layer3/batchnorm/subSub/decoder_layer3/batchnorm/ReadVariableOp:value:0"decoder_layer3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
decoder_layer3/batchnorm/sub?
decoder_layer3/batchnorm/add_1AddV2"decoder_layer3/batchnorm/mul_1:z:0 decoder_layer3/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2 
decoder_layer3/batchnorm/add_1?
decoder_layer4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
decoder_layer4/dropout/Const?
decoder_layer4/dropout/MulMul"decoder_layer3/batchnorm/add_1:z:0%decoder_layer4/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
decoder_layer4/dropout/Mul?
decoder_layer4/dropout/ShapeShape"decoder_layer3/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
decoder_layer4/dropout/Shape?
3decoder_layer4/dropout/random_uniform/RandomUniformRandomUniform%decoder_layer4/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype025
3decoder_layer4/dropout/random_uniform/RandomUniform?
%decoder_layer4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%decoder_layer4/dropout/GreaterEqual/y?
#decoder_layer4/dropout/GreaterEqualGreaterEqual<decoder_layer4/dropout/random_uniform/RandomUniform:output:0.decoder_layer4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#decoder_layer4/dropout/GreaterEqual?
decoder_layer4/dropout/CastCast'decoder_layer4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
decoder_layer4/dropout/Cast?
decoder_layer4/dropout/Mul_1Muldecoder_layer4/dropout/Mul:z:0decoder_layer4/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
decoder_layer4/dropout/Mul_1?
$decoder_layer5/MatMul/ReadVariableOpReadVariableOp-decoder_layer5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$decoder_layer5/MatMul/ReadVariableOp?
decoder_layer5/MatMulMatMul decoder_layer4/dropout/Mul_1:z:0,decoder_layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer5/MatMul?
%decoder_layer5/BiasAdd/ReadVariableOpReadVariableOp.decoder_layer5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%decoder_layer5/BiasAdd/ReadVariableOp?
decoder_layer5/BiasAddBiasAdddecoder_layer5/MatMul:product:0-decoder_layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer5/BiasAdd?
decoder_layer5/ReluReludecoder_layer5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
decoder_layer5/Relu?
$decoder_layer6/MatMul/ReadVariableOpReadVariableOp-decoder_layer6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$decoder_layer6/MatMul/ReadVariableOp?
decoder_layer6/MatMulMatMul!decoder_layer5/Relu:activations:0,decoder_layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer6/MatMul?
%decoder_layer6/BiasAdd/ReadVariableOpReadVariableOp.decoder_layer6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%decoder_layer6/BiasAdd/ReadVariableOp?
decoder_layer6/BiasAddBiasAdddecoder_layer6/MatMul:product:0-decoder_layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer6/BiasAdd?
decoder_layer6/ReluReludecoder_layer6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
decoder_layer6/Relu?
$decoder_layer7/MatMul/ReadVariableOpReadVariableOp-decoder_layer7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$decoder_layer7/MatMul/ReadVariableOp?
decoder_layer7/MatMulMatMul!decoder_layer6/Relu:activations:0,decoder_layer7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer7/MatMul?
%decoder_layer7/BiasAdd/ReadVariableOpReadVariableOp.decoder_layer7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%decoder_layer7/BiasAdd/ReadVariableOp?
decoder_layer7/BiasAddBiasAdddecoder_layer7/MatMul:product:0-decoder_layer7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer7/BiasAdd?
decoder_layer7/ReluReludecoder_layer7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
decoder_layer7/Relu?
$decoder_layer8/MatMul/ReadVariableOpReadVariableOp-decoder_layer8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02&
$decoder_layer8/MatMul/ReadVariableOp?
decoder_layer8/MatMulMatMul!decoder_layer7/Relu:activations:0,decoder_layer8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
decoder_layer8/MatMul?
%decoder_layer8/BiasAdd/ReadVariableOpReadVariableOp.decoder_layer8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%decoder_layer8/BiasAdd/ReadVariableOp?
decoder_layer8/BiasAddBiasAdddecoder_layer8/MatMul:product:0-decoder_layer8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
decoder_layer8/BiasAdd?
decoder_layer8/ReluReludecoder_layer8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
decoder_layer8/Relu?
-decoder_layer9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2/
-decoder_layer9/moments/mean/reduction_indices?
decoder_layer9/moments/meanMean!decoder_layer8/Relu:activations:06decoder_layer9/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
decoder_layer9/moments/mean?
#decoder_layer9/moments/StopGradientStopGradient$decoder_layer9/moments/mean:output:0*
T0*
_output_shapes

:@2%
#decoder_layer9/moments/StopGradient?
(decoder_layer9/moments/SquaredDifferenceSquaredDifference!decoder_layer8/Relu:activations:0,decoder_layer9/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2*
(decoder_layer9/moments/SquaredDifference?
1decoder_layer9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 23
1decoder_layer9/moments/variance/reduction_indices?
decoder_layer9/moments/varianceMean,decoder_layer9/moments/SquaredDifference:z:0:decoder_layer9/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2!
decoder_layer9/moments/variance?
decoder_layer9/moments/SqueezeSqueeze$decoder_layer9/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2 
decoder_layer9/moments/Squeeze?
 decoder_layer9/moments/Squeeze_1Squeeze(decoder_layer9/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2"
 decoder_layer9/moments/Squeeze_1?
$decoder_layer9/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*9
_class/
-+loc:@decoder_layer9/AssignMovingAvg/8023155*
_output_shapes
: *
dtype0*
valueB
 *
?#<2&
$decoder_layer9/AssignMovingAvg/decay?
-decoder_layer9/AssignMovingAvg/ReadVariableOpReadVariableOp&decoder_layer9_assignmovingavg_8023155*
_output_shapes
:@*
dtype02/
-decoder_layer9/AssignMovingAvg/ReadVariableOp?
"decoder_layer9/AssignMovingAvg/subSub5decoder_layer9/AssignMovingAvg/ReadVariableOp:value:0'decoder_layer9/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*9
_class/
-+loc:@decoder_layer9/AssignMovingAvg/8023155*
_output_shapes
:@2$
"decoder_layer9/AssignMovingAvg/sub?
"decoder_layer9/AssignMovingAvg/mulMul&decoder_layer9/AssignMovingAvg/sub:z:0-decoder_layer9/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*9
_class/
-+loc:@decoder_layer9/AssignMovingAvg/8023155*
_output_shapes
:@2$
"decoder_layer9/AssignMovingAvg/mul?
2decoder_layer9/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp&decoder_layer9_assignmovingavg_8023155&decoder_layer9/AssignMovingAvg/mul:z:0.^decoder_layer9/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*9
_class/
-+loc:@decoder_layer9/AssignMovingAvg/8023155*
_output_shapes
 *
dtype024
2decoder_layer9/AssignMovingAvg/AssignSubVariableOp?
&decoder_layer9/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@decoder_layer9/AssignMovingAvg_1/8023161*
_output_shapes
: *
dtype0*
valueB
 *
?#<2(
&decoder_layer9/AssignMovingAvg_1/decay?
/decoder_layer9/AssignMovingAvg_1/ReadVariableOpReadVariableOp(decoder_layer9_assignmovingavg_1_8023161*
_output_shapes
:@*
dtype021
/decoder_layer9/AssignMovingAvg_1/ReadVariableOp?
$decoder_layer9/AssignMovingAvg_1/subSub7decoder_layer9/AssignMovingAvg_1/ReadVariableOp:value:0)decoder_layer9/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*;
_class1
/-loc:@decoder_layer9/AssignMovingAvg_1/8023161*
_output_shapes
:@2&
$decoder_layer9/AssignMovingAvg_1/sub?
$decoder_layer9/AssignMovingAvg_1/mulMul(decoder_layer9/AssignMovingAvg_1/sub:z:0/decoder_layer9/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*;
_class1
/-loc:@decoder_layer9/AssignMovingAvg_1/8023161*
_output_shapes
:@2&
$decoder_layer9/AssignMovingAvg_1/mul?
4decoder_layer9/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp(decoder_layer9_assignmovingavg_1_8023161(decoder_layer9/AssignMovingAvg_1/mul:z:00^decoder_layer9/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@decoder_layer9/AssignMovingAvg_1/8023161*
_output_shapes
 *
dtype026
4decoder_layer9/AssignMovingAvg_1/AssignSubVariableOp?
decoder_layer9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2 
decoder_layer9/batchnorm/add/y?
decoder_layer9/batchnorm/addAddV2)decoder_layer9/moments/Squeeze_1:output:0'decoder_layer9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
decoder_layer9/batchnorm/add?
decoder_layer9/batchnorm/RsqrtRsqrt decoder_layer9/batchnorm/add:z:0*
T0*
_output_shapes
:@2 
decoder_layer9/batchnorm/Rsqrt?
+decoder_layer9/batchnorm/mul/ReadVariableOpReadVariableOp4decoder_layer9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02-
+decoder_layer9/batchnorm/mul/ReadVariableOp?
decoder_layer9/batchnorm/mulMul"decoder_layer9/batchnorm/Rsqrt:y:03decoder_layer9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
decoder_layer9/batchnorm/mul?
decoder_layer9/batchnorm/mul_1Mul!decoder_layer8/Relu:activations:0 decoder_layer9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2 
decoder_layer9/batchnorm/mul_1?
decoder_layer9/batchnorm/mul_2Mul'decoder_layer9/moments/Squeeze:output:0 decoder_layer9/batchnorm/mul:z:0*
T0*
_output_shapes
:@2 
decoder_layer9/batchnorm/mul_2?
'decoder_layer9/batchnorm/ReadVariableOpReadVariableOp0decoder_layer9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02)
'decoder_layer9/batchnorm/ReadVariableOp?
decoder_layer9/batchnorm/subSub/decoder_layer9/batchnorm/ReadVariableOp:value:0"decoder_layer9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
decoder_layer9/batchnorm/sub?
decoder_layer9/batchnorm/add_1AddV2"decoder_layer9/batchnorm/mul_1:z:0 decoder_layer9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2 
decoder_layer9/batchnorm/add_1?
decoder_layer10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
decoder_layer10/dropout/Const?
decoder_layer10/dropout/MulMul"decoder_layer9/batchnorm/add_1:z:0&decoder_layer10/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
decoder_layer10/dropout/Mul?
decoder_layer10/dropout/ShapeShape"decoder_layer9/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
decoder_layer10/dropout/Shape?
4decoder_layer10/dropout/random_uniform/RandomUniformRandomUniform&decoder_layer10/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype026
4decoder_layer10/dropout/random_uniform/RandomUniform?
&decoder_layer10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&decoder_layer10/dropout/GreaterEqual/y?
$decoder_layer10/dropout/GreaterEqualGreaterEqual=decoder_layer10/dropout/random_uniform/RandomUniform:output:0/decoder_layer10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2&
$decoder_layer10/dropout/GreaterEqual?
decoder_layer10/dropout/CastCast(decoder_layer10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
decoder_layer10/dropout/Cast?
decoder_layer10/dropout/Mul_1Muldecoder_layer10/dropout/Mul:z:0 decoder_layer10/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
decoder_layer10/dropout/Mul_1?
"output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02$
"output_layer/MatMul/ReadVariableOp?
output_layer/MatMulMatMul!decoder_layer10/dropout/Mul_1:z:0*output_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
output_layer/MatMul?
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#output_layer/BiasAdd/ReadVariableOp?
output_layer/BiasAddBiasAddoutput_layer/MatMul:product:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
output_layer/BiasAdd?
output_layer/SigmoidSigmoidoutput_layer/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
output_layer/Sigmoid?	
IdentityIdentityoutput_layer/Sigmoid:y:0&^decoder_layer1/BiasAdd/ReadVariableOp%^decoder_layer1/MatMul/ReadVariableOp&^decoder_layer2/BiasAdd/ReadVariableOp%^decoder_layer2/MatMul/ReadVariableOp3^decoder_layer3/AssignMovingAvg/AssignSubVariableOp.^decoder_layer3/AssignMovingAvg/ReadVariableOp5^decoder_layer3/AssignMovingAvg_1/AssignSubVariableOp0^decoder_layer3/AssignMovingAvg_1/ReadVariableOp(^decoder_layer3/batchnorm/ReadVariableOp,^decoder_layer3/batchnorm/mul/ReadVariableOp&^decoder_layer5/BiasAdd/ReadVariableOp%^decoder_layer5/MatMul/ReadVariableOp&^decoder_layer6/BiasAdd/ReadVariableOp%^decoder_layer6/MatMul/ReadVariableOp&^decoder_layer7/BiasAdd/ReadVariableOp%^decoder_layer7/MatMul/ReadVariableOp&^decoder_layer8/BiasAdd/ReadVariableOp%^decoder_layer8/MatMul/ReadVariableOp3^decoder_layer9/AssignMovingAvg/AssignSubVariableOp.^decoder_layer9/AssignMovingAvg/ReadVariableOp5^decoder_layer9/AssignMovingAvg_1/AssignSubVariableOp0^decoder_layer9/AssignMovingAvg_1/ReadVariableOp(^decoder_layer9/batchnorm/ReadVariableOp,^decoder_layer9/batchnorm/mul/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp#^output_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????
::::::::::::::::::::::2N
%decoder_layer1/BiasAdd/ReadVariableOp%decoder_layer1/BiasAdd/ReadVariableOp2L
$decoder_layer1/MatMul/ReadVariableOp$decoder_layer1/MatMul/ReadVariableOp2N
%decoder_layer2/BiasAdd/ReadVariableOp%decoder_layer2/BiasAdd/ReadVariableOp2L
$decoder_layer2/MatMul/ReadVariableOp$decoder_layer2/MatMul/ReadVariableOp2h
2decoder_layer3/AssignMovingAvg/AssignSubVariableOp2decoder_layer3/AssignMovingAvg/AssignSubVariableOp2^
-decoder_layer3/AssignMovingAvg/ReadVariableOp-decoder_layer3/AssignMovingAvg/ReadVariableOp2l
4decoder_layer3/AssignMovingAvg_1/AssignSubVariableOp4decoder_layer3/AssignMovingAvg_1/AssignSubVariableOp2b
/decoder_layer3/AssignMovingAvg_1/ReadVariableOp/decoder_layer3/AssignMovingAvg_1/ReadVariableOp2R
'decoder_layer3/batchnorm/ReadVariableOp'decoder_layer3/batchnorm/ReadVariableOp2Z
+decoder_layer3/batchnorm/mul/ReadVariableOp+decoder_layer3/batchnorm/mul/ReadVariableOp2N
%decoder_layer5/BiasAdd/ReadVariableOp%decoder_layer5/BiasAdd/ReadVariableOp2L
$decoder_layer5/MatMul/ReadVariableOp$decoder_layer5/MatMul/ReadVariableOp2N
%decoder_layer6/BiasAdd/ReadVariableOp%decoder_layer6/BiasAdd/ReadVariableOp2L
$decoder_layer6/MatMul/ReadVariableOp$decoder_layer6/MatMul/ReadVariableOp2N
%decoder_layer7/BiasAdd/ReadVariableOp%decoder_layer7/BiasAdd/ReadVariableOp2L
$decoder_layer7/MatMul/ReadVariableOp$decoder_layer7/MatMul/ReadVariableOp2N
%decoder_layer8/BiasAdd/ReadVariableOp%decoder_layer8/BiasAdd/ReadVariableOp2L
$decoder_layer8/MatMul/ReadVariableOp$decoder_layer8/MatMul/ReadVariableOp2h
2decoder_layer9/AssignMovingAvg/AssignSubVariableOp2decoder_layer9/AssignMovingAvg/AssignSubVariableOp2^
-decoder_layer9/AssignMovingAvg/ReadVariableOp-decoder_layer9/AssignMovingAvg/ReadVariableOp2l
4decoder_layer9/AssignMovingAvg_1/AssignSubVariableOp4decoder_layer9/AssignMovingAvg_1/AssignSubVariableOp2b
/decoder_layer9/AssignMovingAvg_1/ReadVariableOp/decoder_layer9/AssignMovingAvg_1/ReadVariableOp2R
'decoder_layer9/batchnorm/ReadVariableOp'decoder_layer9/batchnorm/ReadVariableOp2Z
+decoder_layer9/batchnorm/mul/ReadVariableOp+decoder_layer9/batchnorm/mul/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2H
"output_layer/MatMul/ReadVariableOp"output_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?@
?	
D__inference_Encoder_layer_call_and_return_conditional_losses_8020107
input_encoder
encoder_layer1_8019809
encoder_layer1_8019811
encoder_layer2_8019836
encoder_layer2_8019838
encoder_layer3_8019867
encoder_layer3_8019869
encoder_layer3_8019871
encoder_layer3_8019873
encoder_layer5_8019928
encoder_layer5_8019930
encoder_layer6_8019955
encoder_layer6_8019957
encoder_layer7_8019982
encoder_layer7_8019984
encoder_layer8_8020009
encoder_layer8_8020011
encoder_layer9_8020040
encoder_layer9_8020042
encoder_layer9_8020044
encoder_layer9_8020046
output_encoder_8020101
output_encoder_8020103
identity??&encoder_layer1/StatefulPartitionedCall?'encoder_layer10/StatefulPartitionedCall?&encoder_layer2/StatefulPartitionedCall?&encoder_layer3/StatefulPartitionedCall?&encoder_layer4/StatefulPartitionedCall?&encoder_layer5/StatefulPartitionedCall?&encoder_layer6/StatefulPartitionedCall?&encoder_layer7/StatefulPartitionedCall?&encoder_layer8/StatefulPartitionedCall?&encoder_layer9/StatefulPartitionedCall?&output_encoder/StatefulPartitionedCall?
&encoder_layer1/StatefulPartitionedCallStatefulPartitionedCallinput_encoderencoder_layer1_8019809encoder_layer1_8019811*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_80197982(
&encoder_layer1/StatefulPartitionedCall?
&encoder_layer2/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer1/StatefulPartitionedCall:output:0encoder_layer2_8019836encoder_layer2_8019838*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer2_layer_call_and_return_conditional_losses_80198252(
&encoder_layer2/StatefulPartitionedCall?
&encoder_layer3/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer2/StatefulPartitionedCall:output:0encoder_layer3_8019867encoder_layer3_8019869encoder_layer3_8019871encoder_layer3_8019873*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer3_layer_call_and_return_conditional_losses_80195992(
&encoder_layer3/StatefulPartitionedCall?
&encoder_layer4/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer4_layer_call_and_return_conditional_losses_80198882(
&encoder_layer4/StatefulPartitionedCall?
&encoder_layer5/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer4/StatefulPartitionedCall:output:0encoder_layer5_8019928encoder_layer5_8019930*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer5_layer_call_and_return_conditional_losses_80199172(
&encoder_layer5/StatefulPartitionedCall?
&encoder_layer6/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer5/StatefulPartitionedCall:output:0encoder_layer6_8019955encoder_layer6_8019957*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer6_layer_call_and_return_conditional_losses_80199442(
&encoder_layer6/StatefulPartitionedCall?
&encoder_layer7/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer6/StatefulPartitionedCall:output:0encoder_layer7_8019982encoder_layer7_8019984*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer7_layer_call_and_return_conditional_losses_80199712(
&encoder_layer7/StatefulPartitionedCall?
&encoder_layer8/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer7/StatefulPartitionedCall:output:0encoder_layer8_8020009encoder_layer8_8020011*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer8_layer_call_and_return_conditional_losses_80199982(
&encoder_layer8/StatefulPartitionedCall?
&encoder_layer9/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer8/StatefulPartitionedCall:output:0encoder_layer9_8020040encoder_layer9_8020042encoder_layer9_8020044encoder_layer9_8020046*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer9_layer_call_and_return_conditional_losses_80197392(
&encoder_layer9/StatefulPartitionedCall?
'encoder_layer10/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer9/StatefulPartitionedCall:output:0'^encoder_layer4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_encoder_layer10_layer_call_and_return_conditional_losses_80200612)
'encoder_layer10/StatefulPartitionedCall?
&output_encoder/StatefulPartitionedCallStatefulPartitionedCall0encoder_layer10/StatefulPartitionedCall:output:0output_encoder_8020101output_encoder_8020103*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_output_encoder_layer_call_and_return_conditional_losses_80200902(
&output_encoder/StatefulPartitionedCall?
IdentityIdentity/output_encoder/StatefulPartitionedCall:output:0'^encoder_layer1/StatefulPartitionedCall(^encoder_layer10/StatefulPartitionedCall'^encoder_layer2/StatefulPartitionedCall'^encoder_layer3/StatefulPartitionedCall'^encoder_layer4/StatefulPartitionedCall'^encoder_layer5/StatefulPartitionedCall'^encoder_layer6/StatefulPartitionedCall'^encoder_layer7/StatefulPartitionedCall'^encoder_layer8/StatefulPartitionedCall'^encoder_layer9/StatefulPartitionedCall'^output_encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2P
&encoder_layer1/StatefulPartitionedCall&encoder_layer1/StatefulPartitionedCall2R
'encoder_layer10/StatefulPartitionedCall'encoder_layer10/StatefulPartitionedCall2P
&encoder_layer2/StatefulPartitionedCall&encoder_layer2/StatefulPartitionedCall2P
&encoder_layer3/StatefulPartitionedCall&encoder_layer3/StatefulPartitionedCall2P
&encoder_layer4/StatefulPartitionedCall&encoder_layer4/StatefulPartitionedCall2P
&encoder_layer5/StatefulPartitionedCall&encoder_layer5/StatefulPartitionedCall2P
&encoder_layer6/StatefulPartitionedCall&encoder_layer6/StatefulPartitionedCall2P
&encoder_layer7/StatefulPartitionedCall&encoder_layer7/StatefulPartitionedCall2P
&encoder_layer8/StatefulPartitionedCall&encoder_layer8/StatefulPartitionedCall2P
&encoder_layer9/StatefulPartitionedCall&encoder_layer9/StatefulPartitionedCall2P
&output_encoder/StatefulPartitionedCall&output_encoder/StatefulPartitionedCall:W S
(
_output_shapes
:??????????
'
_user_specified_nameinput_encoder
?	
?
K__inference_encoder_layer7_layer_call_and_return_conditional_losses_8019971

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
j
L__inference_encoder_layer10_layer_call_and_return_conditional_losses_8023708

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
i
0__inference_encoder_layer4_layer_call_fn_8023524

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer4_layer_call_and_return_conditional_losses_80198882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
j
1__inference_decoder_layer10_layer_call_fn_8024071

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_decoder_layer10_layer_call_and_return_conditional_losses_80209412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
L
0__inference_encoder_layer4_layer_call_fn_8023529

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer4_layer_call_and_return_conditional_losses_80198932
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?8
 __inference__traced_save_8024494
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_encoder_layer1_kernel_read_readvariableop2
.savev2_encoder_layer1_bias_read_readvariableop4
0savev2_encoder_layer2_kernel_read_readvariableop2
.savev2_encoder_layer2_bias_read_readvariableop3
/savev2_encoder_layer3_gamma_read_readvariableop2
.savev2_encoder_layer3_beta_read_readvariableop9
5savev2_encoder_layer3_moving_mean_read_readvariableop=
9savev2_encoder_layer3_moving_variance_read_readvariableop4
0savev2_encoder_layer5_kernel_read_readvariableop2
.savev2_encoder_layer5_bias_read_readvariableop4
0savev2_encoder_layer6_kernel_read_readvariableop2
.savev2_encoder_layer6_bias_read_readvariableop4
0savev2_encoder_layer7_kernel_read_readvariableop2
.savev2_encoder_layer7_bias_read_readvariableop4
0savev2_encoder_layer8_kernel_read_readvariableop2
.savev2_encoder_layer8_bias_read_readvariableop3
/savev2_encoder_layer9_gamma_read_readvariableop2
.savev2_encoder_layer9_beta_read_readvariableop9
5savev2_encoder_layer9_moving_mean_read_readvariableop=
9savev2_encoder_layer9_moving_variance_read_readvariableop4
0savev2_output_encoder_kernel_read_readvariableop2
.savev2_output_encoder_bias_read_readvariableop4
0savev2_decoder_layer1_kernel_read_readvariableop2
.savev2_decoder_layer1_bias_read_readvariableop4
0savev2_decoder_layer2_kernel_read_readvariableop2
.savev2_decoder_layer2_bias_read_readvariableop3
/savev2_decoder_layer3_gamma_read_readvariableop2
.savev2_decoder_layer3_beta_read_readvariableop9
5savev2_decoder_layer3_moving_mean_read_readvariableop=
9savev2_decoder_layer3_moving_variance_read_readvariableop4
0savev2_decoder_layer5_kernel_read_readvariableop2
.savev2_decoder_layer5_bias_read_readvariableop4
0savev2_decoder_layer6_kernel_read_readvariableop2
.savev2_decoder_layer6_bias_read_readvariableop4
0savev2_decoder_layer7_kernel_read_readvariableop2
.savev2_decoder_layer7_bias_read_readvariableop4
0savev2_decoder_layer8_kernel_read_readvariableop2
.savev2_decoder_layer8_bias_read_readvariableop3
/savev2_decoder_layer9_gamma_read_readvariableop2
.savev2_decoder_layer9_beta_read_readvariableop9
5savev2_decoder_layer9_moving_mean_read_readvariableop=
9savev2_decoder_layer9_moving_variance_read_readvariableop2
.savev2_output_layer_kernel_read_readvariableop0
,savev2_output_layer_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop;
7savev2_adam_encoder_layer1_kernel_m_read_readvariableop9
5savev2_adam_encoder_layer1_bias_m_read_readvariableop;
7savev2_adam_encoder_layer2_kernel_m_read_readvariableop9
5savev2_adam_encoder_layer2_bias_m_read_readvariableop:
6savev2_adam_encoder_layer3_gamma_m_read_readvariableop9
5savev2_adam_encoder_layer3_beta_m_read_readvariableop;
7savev2_adam_encoder_layer5_kernel_m_read_readvariableop9
5savev2_adam_encoder_layer5_bias_m_read_readvariableop;
7savev2_adam_encoder_layer6_kernel_m_read_readvariableop9
5savev2_adam_encoder_layer6_bias_m_read_readvariableop;
7savev2_adam_encoder_layer7_kernel_m_read_readvariableop9
5savev2_adam_encoder_layer7_bias_m_read_readvariableop;
7savev2_adam_encoder_layer8_kernel_m_read_readvariableop9
5savev2_adam_encoder_layer8_bias_m_read_readvariableop:
6savev2_adam_encoder_layer9_gamma_m_read_readvariableop9
5savev2_adam_encoder_layer9_beta_m_read_readvariableop;
7savev2_adam_output_encoder_kernel_m_read_readvariableop9
5savev2_adam_output_encoder_bias_m_read_readvariableop;
7savev2_adam_decoder_layer1_kernel_m_read_readvariableop9
5savev2_adam_decoder_layer1_bias_m_read_readvariableop;
7savev2_adam_decoder_layer2_kernel_m_read_readvariableop9
5savev2_adam_decoder_layer2_bias_m_read_readvariableop:
6savev2_adam_decoder_layer3_gamma_m_read_readvariableop9
5savev2_adam_decoder_layer3_beta_m_read_readvariableop;
7savev2_adam_decoder_layer5_kernel_m_read_readvariableop9
5savev2_adam_decoder_layer5_bias_m_read_readvariableop;
7savev2_adam_decoder_layer6_kernel_m_read_readvariableop9
5savev2_adam_decoder_layer6_bias_m_read_readvariableop;
7savev2_adam_decoder_layer7_kernel_m_read_readvariableop9
5savev2_adam_decoder_layer7_bias_m_read_readvariableop;
7savev2_adam_decoder_layer8_kernel_m_read_readvariableop9
5savev2_adam_decoder_layer8_bias_m_read_readvariableop:
6savev2_adam_decoder_layer9_gamma_m_read_readvariableop9
5savev2_adam_decoder_layer9_beta_m_read_readvariableop9
5savev2_adam_output_layer_kernel_m_read_readvariableop7
3savev2_adam_output_layer_bias_m_read_readvariableop;
7savev2_adam_encoder_layer1_kernel_v_read_readvariableop9
5savev2_adam_encoder_layer1_bias_v_read_readvariableop;
7savev2_adam_encoder_layer2_kernel_v_read_readvariableop9
5savev2_adam_encoder_layer2_bias_v_read_readvariableop:
6savev2_adam_encoder_layer3_gamma_v_read_readvariableop9
5savev2_adam_encoder_layer3_beta_v_read_readvariableop;
7savev2_adam_encoder_layer5_kernel_v_read_readvariableop9
5savev2_adam_encoder_layer5_bias_v_read_readvariableop;
7savev2_adam_encoder_layer6_kernel_v_read_readvariableop9
5savev2_adam_encoder_layer6_bias_v_read_readvariableop;
7savev2_adam_encoder_layer7_kernel_v_read_readvariableop9
5savev2_adam_encoder_layer7_bias_v_read_readvariableop;
7savev2_adam_encoder_layer8_kernel_v_read_readvariableop9
5savev2_adam_encoder_layer8_bias_v_read_readvariableop:
6savev2_adam_encoder_layer9_gamma_v_read_readvariableop9
5savev2_adam_encoder_layer9_beta_v_read_readvariableop;
7savev2_adam_output_encoder_kernel_v_read_readvariableop9
5savev2_adam_output_encoder_bias_v_read_readvariableop;
7savev2_adam_decoder_layer1_kernel_v_read_readvariableop9
5savev2_adam_decoder_layer1_bias_v_read_readvariableop;
7savev2_adam_decoder_layer2_kernel_v_read_readvariableop9
5savev2_adam_decoder_layer2_bias_v_read_readvariableop:
6savev2_adam_decoder_layer3_gamma_v_read_readvariableop9
5savev2_adam_decoder_layer3_beta_v_read_readvariableop;
7savev2_adam_decoder_layer5_kernel_v_read_readvariableop9
5savev2_adam_decoder_layer5_bias_v_read_readvariableop;
7savev2_adam_decoder_layer6_kernel_v_read_readvariableop9
5savev2_adam_decoder_layer6_bias_v_read_readvariableop;
7savev2_adam_decoder_layer7_kernel_v_read_readvariableop9
5savev2_adam_decoder_layer7_bias_v_read_readvariableop;
7savev2_adam_decoder_layer8_kernel_v_read_readvariableop9
5savev2_adam_decoder_layer8_bias_v_read_readvariableop:
6savev2_adam_decoder_layer9_gamma_v_read_readvariableop9
5savev2_adam_decoder_layer9_beta_v_read_readvariableop9
5savev2_adam_output_layer_kernel_v_read_readvariableop7
3savev2_adam_output_layer_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?9
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:~*
dtype0*?8
value?8B?8~B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/42/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/43/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/34/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/35/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/36/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/37/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/38/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/39/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/42/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/43/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:~*
dtype0*?
value?B?~B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?5
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_encoder_layer1_kernel_read_readvariableop.savev2_encoder_layer1_bias_read_readvariableop0savev2_encoder_layer2_kernel_read_readvariableop.savev2_encoder_layer2_bias_read_readvariableop/savev2_encoder_layer3_gamma_read_readvariableop.savev2_encoder_layer3_beta_read_readvariableop5savev2_encoder_layer3_moving_mean_read_readvariableop9savev2_encoder_layer3_moving_variance_read_readvariableop0savev2_encoder_layer5_kernel_read_readvariableop.savev2_encoder_layer5_bias_read_readvariableop0savev2_encoder_layer6_kernel_read_readvariableop.savev2_encoder_layer6_bias_read_readvariableop0savev2_encoder_layer7_kernel_read_readvariableop.savev2_encoder_layer7_bias_read_readvariableop0savev2_encoder_layer8_kernel_read_readvariableop.savev2_encoder_layer8_bias_read_readvariableop/savev2_encoder_layer9_gamma_read_readvariableop.savev2_encoder_layer9_beta_read_readvariableop5savev2_encoder_layer9_moving_mean_read_readvariableop9savev2_encoder_layer9_moving_variance_read_readvariableop0savev2_output_encoder_kernel_read_readvariableop.savev2_output_encoder_bias_read_readvariableop0savev2_decoder_layer1_kernel_read_readvariableop.savev2_decoder_layer1_bias_read_readvariableop0savev2_decoder_layer2_kernel_read_readvariableop.savev2_decoder_layer2_bias_read_readvariableop/savev2_decoder_layer3_gamma_read_readvariableop.savev2_decoder_layer3_beta_read_readvariableop5savev2_decoder_layer3_moving_mean_read_readvariableop9savev2_decoder_layer3_moving_variance_read_readvariableop0savev2_decoder_layer5_kernel_read_readvariableop.savev2_decoder_layer5_bias_read_readvariableop0savev2_decoder_layer6_kernel_read_readvariableop.savev2_decoder_layer6_bias_read_readvariableop0savev2_decoder_layer7_kernel_read_readvariableop.savev2_decoder_layer7_bias_read_readvariableop0savev2_decoder_layer8_kernel_read_readvariableop.savev2_decoder_layer8_bias_read_readvariableop/savev2_decoder_layer9_gamma_read_readvariableop.savev2_decoder_layer9_beta_read_readvariableop5savev2_decoder_layer9_moving_mean_read_readvariableop9savev2_decoder_layer9_moving_variance_read_readvariableop.savev2_output_layer_kernel_read_readvariableop,savev2_output_layer_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop7savev2_adam_encoder_layer1_kernel_m_read_readvariableop5savev2_adam_encoder_layer1_bias_m_read_readvariableop7savev2_adam_encoder_layer2_kernel_m_read_readvariableop5savev2_adam_encoder_layer2_bias_m_read_readvariableop6savev2_adam_encoder_layer3_gamma_m_read_readvariableop5savev2_adam_encoder_layer3_beta_m_read_readvariableop7savev2_adam_encoder_layer5_kernel_m_read_readvariableop5savev2_adam_encoder_layer5_bias_m_read_readvariableop7savev2_adam_encoder_layer6_kernel_m_read_readvariableop5savev2_adam_encoder_layer6_bias_m_read_readvariableop7savev2_adam_encoder_layer7_kernel_m_read_readvariableop5savev2_adam_encoder_layer7_bias_m_read_readvariableop7savev2_adam_encoder_layer8_kernel_m_read_readvariableop5savev2_adam_encoder_layer8_bias_m_read_readvariableop6savev2_adam_encoder_layer9_gamma_m_read_readvariableop5savev2_adam_encoder_layer9_beta_m_read_readvariableop7savev2_adam_output_encoder_kernel_m_read_readvariableop5savev2_adam_output_encoder_bias_m_read_readvariableop7savev2_adam_decoder_layer1_kernel_m_read_readvariableop5savev2_adam_decoder_layer1_bias_m_read_readvariableop7savev2_adam_decoder_layer2_kernel_m_read_readvariableop5savev2_adam_decoder_layer2_bias_m_read_readvariableop6savev2_adam_decoder_layer3_gamma_m_read_readvariableop5savev2_adam_decoder_layer3_beta_m_read_readvariableop7savev2_adam_decoder_layer5_kernel_m_read_readvariableop5savev2_adam_decoder_layer5_bias_m_read_readvariableop7savev2_adam_decoder_layer6_kernel_m_read_readvariableop5savev2_adam_decoder_layer6_bias_m_read_readvariableop7savev2_adam_decoder_layer7_kernel_m_read_readvariableop5savev2_adam_decoder_layer7_bias_m_read_readvariableop7savev2_adam_decoder_layer8_kernel_m_read_readvariableop5savev2_adam_decoder_layer8_bias_m_read_readvariableop6savev2_adam_decoder_layer9_gamma_m_read_readvariableop5savev2_adam_decoder_layer9_beta_m_read_readvariableop5savev2_adam_output_layer_kernel_m_read_readvariableop3savev2_adam_output_layer_bias_m_read_readvariableop7savev2_adam_encoder_layer1_kernel_v_read_readvariableop5savev2_adam_encoder_layer1_bias_v_read_readvariableop7savev2_adam_encoder_layer2_kernel_v_read_readvariableop5savev2_adam_encoder_layer2_bias_v_read_readvariableop6savev2_adam_encoder_layer3_gamma_v_read_readvariableop5savev2_adam_encoder_layer3_beta_v_read_readvariableop7savev2_adam_encoder_layer5_kernel_v_read_readvariableop5savev2_adam_encoder_layer5_bias_v_read_readvariableop7savev2_adam_encoder_layer6_kernel_v_read_readvariableop5savev2_adam_encoder_layer6_bias_v_read_readvariableop7savev2_adam_encoder_layer7_kernel_v_read_readvariableop5savev2_adam_encoder_layer7_bias_v_read_readvariableop7savev2_adam_encoder_layer8_kernel_v_read_readvariableop5savev2_adam_encoder_layer8_bias_v_read_readvariableop6savev2_adam_encoder_layer9_gamma_v_read_readvariableop5savev2_adam_encoder_layer9_beta_v_read_readvariableop7savev2_adam_output_encoder_kernel_v_read_readvariableop5savev2_adam_output_encoder_bias_v_read_readvariableop7savev2_adam_decoder_layer1_kernel_v_read_readvariableop5savev2_adam_decoder_layer1_bias_v_read_readvariableop7savev2_adam_decoder_layer2_kernel_v_read_readvariableop5savev2_adam_decoder_layer2_bias_v_read_readvariableop6savev2_adam_decoder_layer3_gamma_v_read_readvariableop5savev2_adam_decoder_layer3_beta_v_read_readvariableop7savev2_adam_decoder_layer5_kernel_v_read_readvariableop5savev2_adam_decoder_layer5_bias_v_read_readvariableop7savev2_adam_decoder_layer6_kernel_v_read_readvariableop5savev2_adam_decoder_layer6_bias_v_read_readvariableop7savev2_adam_decoder_layer7_kernel_v_read_readvariableop5savev2_adam_decoder_layer7_bias_v_read_readvariableop7savev2_adam_decoder_layer8_kernel_v_read_readvariableop5savev2_adam_decoder_layer8_bias_v_read_readvariableop6savev2_adam_decoder_layer9_gamma_v_read_readvariableop5savev2_adam_decoder_layer9_beta_v_read_readvariableop5savev2_adam_output_layer_kernel_v_read_readvariableop3savev2_adam_output_layer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes?
?2~	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : :
??:?:	?@:@:@:@:@:@:	@?:?:
??:?:
??:?:	?@:@:@:@:@:@:@
:
:	
?:?:
??:?:?:?:?:?:
??:?:
??:?:
??:?:	?@:@:@:@:@:@:	@?:?: : : : :
??:?:	?@:@:@:@:	@?:?:
??:?:
??:?:	?@:@:@:@:@
:
:	
?:?:
??:?:?:?:
??:?:
??:?:
??:?:	?@:@:@:@:	@?:?:
??:?:	?@:@:@:@:	@?:?:
??:?:
??:?:	?@:@:@:@:@
:
:	
?:?:
??:?:?:?:
??:?:
??:?:
??:?:	?@:@:@:@:	@?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:%!

_output_shapes
:	@?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:$ 

_output_shapes

:@
: 

_output_shapes
:
:%!

_output_shapes
:	
?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:! 

_output_shapes	
:?:!!

_output_shapes	
:?:!"

_output_shapes	
:?:!#

_output_shapes	
:?:&$"
 
_output_shapes
:
??:!%

_output_shapes	
:?:&&"
 
_output_shapes
:
??:!'

_output_shapes	
:?:&("
 
_output_shapes
:
??:!)

_output_shapes	
:?:%*!

_output_shapes
:	?@: +

_output_shapes
:@: ,

_output_shapes
:@: -

_output_shapes
:@: .

_output_shapes
:@: /

_output_shapes
:@:%0!

_output_shapes
:	@?:!1

_output_shapes	
:?:2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :&6"
 
_output_shapes
:
??:!7

_output_shapes	
:?:%8!

_output_shapes
:	?@: 9

_output_shapes
:@: :

_output_shapes
:@: ;

_output_shapes
:@:%<!

_output_shapes
:	@?:!=

_output_shapes	
:?:&>"
 
_output_shapes
:
??:!?

_output_shapes	
:?:&@"
 
_output_shapes
:
??:!A

_output_shapes	
:?:%B!

_output_shapes
:	?@: C

_output_shapes
:@: D

_output_shapes
:@: E

_output_shapes
:@:$F 

_output_shapes

:@
: G

_output_shapes
:
:%H!

_output_shapes
:	
?:!I

_output_shapes	
:?:&J"
 
_output_shapes
:
??:!K

_output_shapes	
:?:!L

_output_shapes	
:?:!M

_output_shapes	
:?:&N"
 
_output_shapes
:
??:!O

_output_shapes	
:?:&P"
 
_output_shapes
:
??:!Q

_output_shapes	
:?:&R"
 
_output_shapes
:
??:!S

_output_shapes	
:?:%T!

_output_shapes
:	?@: U

_output_shapes
:@: V

_output_shapes
:@: W

_output_shapes
:@:%X!

_output_shapes
:	@?:!Y

_output_shapes	
:?:&Z"
 
_output_shapes
:
??:![

_output_shapes	
:?:%\!

_output_shapes
:	?@: ]

_output_shapes
:@: ^

_output_shapes
:@: _

_output_shapes
:@:%`!

_output_shapes
:	@?:!a

_output_shapes	
:?:&b"
 
_output_shapes
:
??:!c

_output_shapes	
:?:&d"
 
_output_shapes
:
??:!e

_output_shapes	
:?:%f!

_output_shapes
:	?@: g

_output_shapes
:@: h

_output_shapes
:@: i

_output_shapes
:@:$j 

_output_shapes

:@
: k

_output_shapes
:
:%l!

_output_shapes
:	
?:!m

_output_shapes	
:?:&n"
 
_output_shapes
:
??:!o

_output_shapes	
:?:!p

_output_shapes	
:?:!q

_output_shapes	
:?:&r"
 
_output_shapes
:
??:!s

_output_shapes	
:?:&t"
 
_output_shapes
:
??:!u

_output_shapes	
:?:&v"
 
_output_shapes
:
??:!w

_output_shapes	
:?:%x!

_output_shapes
:	?@: y

_output_shapes
:@: z

_output_shapes
:@: {

_output_shapes
:@:%|!

_output_shapes
:	@?:!}

_output_shapes	
:?:~

_output_shapes
: 
??
?&
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_8022558

inputs9
5encoder_encoder_layer1_matmul_readvariableop_resource:
6encoder_encoder_layer1_biasadd_readvariableop_resource9
5encoder_encoder_layer2_matmul_readvariableop_resource:
6encoder_encoder_layer2_biasadd_readvariableop_resource<
8encoder_encoder_layer3_batchnorm_readvariableop_resource@
<encoder_encoder_layer3_batchnorm_mul_readvariableop_resource>
:encoder_encoder_layer3_batchnorm_readvariableop_1_resource>
:encoder_encoder_layer3_batchnorm_readvariableop_2_resource9
5encoder_encoder_layer5_matmul_readvariableop_resource:
6encoder_encoder_layer5_biasadd_readvariableop_resource9
5encoder_encoder_layer6_matmul_readvariableop_resource:
6encoder_encoder_layer6_biasadd_readvariableop_resource9
5encoder_encoder_layer7_matmul_readvariableop_resource:
6encoder_encoder_layer7_biasadd_readvariableop_resource9
5encoder_encoder_layer8_matmul_readvariableop_resource:
6encoder_encoder_layer8_biasadd_readvariableop_resource<
8encoder_encoder_layer9_batchnorm_readvariableop_resource@
<encoder_encoder_layer9_batchnorm_mul_readvariableop_resource>
:encoder_encoder_layer9_batchnorm_readvariableop_1_resource>
:encoder_encoder_layer9_batchnorm_readvariableop_2_resource9
5encoder_output_encoder_matmul_readvariableop_resource:
6encoder_output_encoder_biasadd_readvariableop_resource9
5decoder_decoder_layer1_matmul_readvariableop_resource:
6decoder_decoder_layer1_biasadd_readvariableop_resource9
5decoder_decoder_layer2_matmul_readvariableop_resource:
6decoder_decoder_layer2_biasadd_readvariableop_resource<
8decoder_decoder_layer3_batchnorm_readvariableop_resource@
<decoder_decoder_layer3_batchnorm_mul_readvariableop_resource>
:decoder_decoder_layer3_batchnorm_readvariableop_1_resource>
:decoder_decoder_layer3_batchnorm_readvariableop_2_resource9
5decoder_decoder_layer5_matmul_readvariableop_resource:
6decoder_decoder_layer5_biasadd_readvariableop_resource9
5decoder_decoder_layer6_matmul_readvariableop_resource:
6decoder_decoder_layer6_biasadd_readvariableop_resource9
5decoder_decoder_layer7_matmul_readvariableop_resource:
6decoder_decoder_layer7_biasadd_readvariableop_resource9
5decoder_decoder_layer8_matmul_readvariableop_resource:
6decoder_decoder_layer8_biasadd_readvariableop_resource<
8decoder_decoder_layer9_batchnorm_readvariableop_resource@
<decoder_decoder_layer9_batchnorm_mul_readvariableop_resource>
:decoder_decoder_layer9_batchnorm_readvariableop_1_resource>
:decoder_decoder_layer9_batchnorm_readvariableop_2_resource7
3decoder_output_layer_matmul_readvariableop_resource8
4decoder_output_layer_biasadd_readvariableop_resource
identity??-Decoder/decoder_layer1/BiasAdd/ReadVariableOp?,Decoder/decoder_layer1/MatMul/ReadVariableOp?-Decoder/decoder_layer2/BiasAdd/ReadVariableOp?,Decoder/decoder_layer2/MatMul/ReadVariableOp?/Decoder/decoder_layer3/batchnorm/ReadVariableOp?1Decoder/decoder_layer3/batchnorm/ReadVariableOp_1?1Decoder/decoder_layer3/batchnorm/ReadVariableOp_2?3Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp?-Decoder/decoder_layer5/BiasAdd/ReadVariableOp?,Decoder/decoder_layer5/MatMul/ReadVariableOp?-Decoder/decoder_layer6/BiasAdd/ReadVariableOp?,Decoder/decoder_layer6/MatMul/ReadVariableOp?-Decoder/decoder_layer7/BiasAdd/ReadVariableOp?,Decoder/decoder_layer7/MatMul/ReadVariableOp?-Decoder/decoder_layer8/BiasAdd/ReadVariableOp?,Decoder/decoder_layer8/MatMul/ReadVariableOp?/Decoder/decoder_layer9/batchnorm/ReadVariableOp?1Decoder/decoder_layer9/batchnorm/ReadVariableOp_1?1Decoder/decoder_layer9/batchnorm/ReadVariableOp_2?3Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp?+Decoder/output_layer/BiasAdd/ReadVariableOp?*Decoder/output_layer/MatMul/ReadVariableOp?-Encoder/encoder_layer1/BiasAdd/ReadVariableOp?,Encoder/encoder_layer1/MatMul/ReadVariableOp?-Encoder/encoder_layer2/BiasAdd/ReadVariableOp?,Encoder/encoder_layer2/MatMul/ReadVariableOp?/Encoder/encoder_layer3/batchnorm/ReadVariableOp?1Encoder/encoder_layer3/batchnorm/ReadVariableOp_1?1Encoder/encoder_layer3/batchnorm/ReadVariableOp_2?3Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp?-Encoder/encoder_layer5/BiasAdd/ReadVariableOp?,Encoder/encoder_layer5/MatMul/ReadVariableOp?-Encoder/encoder_layer6/BiasAdd/ReadVariableOp?,Encoder/encoder_layer6/MatMul/ReadVariableOp?-Encoder/encoder_layer7/BiasAdd/ReadVariableOp?,Encoder/encoder_layer7/MatMul/ReadVariableOp?-Encoder/encoder_layer8/BiasAdd/ReadVariableOp?,Encoder/encoder_layer8/MatMul/ReadVariableOp?/Encoder/encoder_layer9/batchnorm/ReadVariableOp?1Encoder/encoder_layer9/batchnorm/ReadVariableOp_1?1Encoder/encoder_layer9/batchnorm/ReadVariableOp_2?3Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp?-Encoder/output_encoder/BiasAdd/ReadVariableOp?,Encoder/output_encoder/MatMul/ReadVariableOp?
,Encoder/encoder_layer1/MatMul/ReadVariableOpReadVariableOp5encoder_encoder_layer1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Encoder/encoder_layer1/MatMul/ReadVariableOp?
Encoder/encoder_layer1/MatMulMatMulinputs4Encoder/encoder_layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer1/MatMul?
-Encoder/encoder_layer1/BiasAdd/ReadVariableOpReadVariableOp6encoder_encoder_layer1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Encoder/encoder_layer1/BiasAdd/ReadVariableOp?
Encoder/encoder_layer1/BiasAddBiasAdd'Encoder/encoder_layer1/MatMul:product:05Encoder/encoder_layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Encoder/encoder_layer1/BiasAdd?
Encoder/encoder_layer1/ReluRelu'Encoder/encoder_layer1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer1/Relu?
,Encoder/encoder_layer2/MatMul/ReadVariableOpReadVariableOp5encoder_encoder_layer2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02.
,Encoder/encoder_layer2/MatMul/ReadVariableOp?
Encoder/encoder_layer2/MatMulMatMul)Encoder/encoder_layer1/Relu:activations:04Encoder/encoder_layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Encoder/encoder_layer2/MatMul?
-Encoder/encoder_layer2/BiasAdd/ReadVariableOpReadVariableOp6encoder_encoder_layer2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-Encoder/encoder_layer2/BiasAdd/ReadVariableOp?
Encoder/encoder_layer2/BiasAddBiasAdd'Encoder/encoder_layer2/MatMul:product:05Encoder/encoder_layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
Encoder/encoder_layer2/BiasAdd?
Encoder/encoder_layer2/ReluRelu'Encoder/encoder_layer2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Encoder/encoder_layer2/Relu?
/Encoder/encoder_layer3/batchnorm/ReadVariableOpReadVariableOp8encoder_encoder_layer3_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype021
/Encoder/encoder_layer3/batchnorm/ReadVariableOp?
&Encoder/encoder_layer3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&Encoder/encoder_layer3/batchnorm/add/y?
$Encoder/encoder_layer3/batchnorm/addAddV27Encoder/encoder_layer3/batchnorm/ReadVariableOp:value:0/Encoder/encoder_layer3/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2&
$Encoder/encoder_layer3/batchnorm/add?
&Encoder/encoder_layer3/batchnorm/RsqrtRsqrt(Encoder/encoder_layer3/batchnorm/add:z:0*
T0*
_output_shapes
:@2(
&Encoder/encoder_layer3/batchnorm/Rsqrt?
3Encoder/encoder_layer3/batchnorm/mul/ReadVariableOpReadVariableOp<encoder_encoder_layer3_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype025
3Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp?
$Encoder/encoder_layer3/batchnorm/mulMul*Encoder/encoder_layer3/batchnorm/Rsqrt:y:0;Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2&
$Encoder/encoder_layer3/batchnorm/mul?
&Encoder/encoder_layer3/batchnorm/mul_1Mul)Encoder/encoder_layer2/Relu:activations:0(Encoder/encoder_layer3/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2(
&Encoder/encoder_layer3/batchnorm/mul_1?
1Encoder/encoder_layer3/batchnorm/ReadVariableOp_1ReadVariableOp:encoder_encoder_layer3_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype023
1Encoder/encoder_layer3/batchnorm/ReadVariableOp_1?
&Encoder/encoder_layer3/batchnorm/mul_2Mul9Encoder/encoder_layer3/batchnorm/ReadVariableOp_1:value:0(Encoder/encoder_layer3/batchnorm/mul:z:0*
T0*
_output_shapes
:@2(
&Encoder/encoder_layer3/batchnorm/mul_2?
1Encoder/encoder_layer3/batchnorm/ReadVariableOp_2ReadVariableOp:encoder_encoder_layer3_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype023
1Encoder/encoder_layer3/batchnorm/ReadVariableOp_2?
$Encoder/encoder_layer3/batchnorm/subSub9Encoder/encoder_layer3/batchnorm/ReadVariableOp_2:value:0*Encoder/encoder_layer3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2&
$Encoder/encoder_layer3/batchnorm/sub?
&Encoder/encoder_layer3/batchnorm/add_1AddV2*Encoder/encoder_layer3/batchnorm/mul_1:z:0(Encoder/encoder_layer3/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2(
&Encoder/encoder_layer3/batchnorm/add_1?
Encoder/encoder_layer4/IdentityIdentity*Encoder/encoder_layer3/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????@2!
Encoder/encoder_layer4/Identity?
,Encoder/encoder_layer5/MatMul/ReadVariableOpReadVariableOp5encoder_encoder_layer5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02.
,Encoder/encoder_layer5/MatMul/ReadVariableOp?
Encoder/encoder_layer5/MatMulMatMul(Encoder/encoder_layer4/Identity:output:04Encoder/encoder_layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer5/MatMul?
-Encoder/encoder_layer5/BiasAdd/ReadVariableOpReadVariableOp6encoder_encoder_layer5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Encoder/encoder_layer5/BiasAdd/ReadVariableOp?
Encoder/encoder_layer5/BiasAddBiasAdd'Encoder/encoder_layer5/MatMul:product:05Encoder/encoder_layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Encoder/encoder_layer5/BiasAdd?
Encoder/encoder_layer5/ReluRelu'Encoder/encoder_layer5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer5/Relu?
,Encoder/encoder_layer6/MatMul/ReadVariableOpReadVariableOp5encoder_encoder_layer6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Encoder/encoder_layer6/MatMul/ReadVariableOp?
Encoder/encoder_layer6/MatMulMatMul)Encoder/encoder_layer5/Relu:activations:04Encoder/encoder_layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer6/MatMul?
-Encoder/encoder_layer6/BiasAdd/ReadVariableOpReadVariableOp6encoder_encoder_layer6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Encoder/encoder_layer6/BiasAdd/ReadVariableOp?
Encoder/encoder_layer6/BiasAddBiasAdd'Encoder/encoder_layer6/MatMul:product:05Encoder/encoder_layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Encoder/encoder_layer6/BiasAdd?
Encoder/encoder_layer6/ReluRelu'Encoder/encoder_layer6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer6/Relu?
,Encoder/encoder_layer7/MatMul/ReadVariableOpReadVariableOp5encoder_encoder_layer7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Encoder/encoder_layer7/MatMul/ReadVariableOp?
Encoder/encoder_layer7/MatMulMatMul)Encoder/encoder_layer6/Relu:activations:04Encoder/encoder_layer7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer7/MatMul?
-Encoder/encoder_layer7/BiasAdd/ReadVariableOpReadVariableOp6encoder_encoder_layer7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Encoder/encoder_layer7/BiasAdd/ReadVariableOp?
Encoder/encoder_layer7/BiasAddBiasAdd'Encoder/encoder_layer7/MatMul:product:05Encoder/encoder_layer7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Encoder/encoder_layer7/BiasAdd?
Encoder/encoder_layer7/ReluRelu'Encoder/encoder_layer7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Encoder/encoder_layer7/Relu?
,Encoder/encoder_layer8/MatMul/ReadVariableOpReadVariableOp5encoder_encoder_layer8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02.
,Encoder/encoder_layer8/MatMul/ReadVariableOp?
Encoder/encoder_layer8/MatMulMatMul)Encoder/encoder_layer7/Relu:activations:04Encoder/encoder_layer8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Encoder/encoder_layer8/MatMul?
-Encoder/encoder_layer8/BiasAdd/ReadVariableOpReadVariableOp6encoder_encoder_layer8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-Encoder/encoder_layer8/BiasAdd/ReadVariableOp?
Encoder/encoder_layer8/BiasAddBiasAdd'Encoder/encoder_layer8/MatMul:product:05Encoder/encoder_layer8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
Encoder/encoder_layer8/BiasAdd?
Encoder/encoder_layer8/ReluRelu'Encoder/encoder_layer8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Encoder/encoder_layer8/Relu?
/Encoder/encoder_layer9/batchnorm/ReadVariableOpReadVariableOp8encoder_encoder_layer9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype021
/Encoder/encoder_layer9/batchnorm/ReadVariableOp?
&Encoder/encoder_layer9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&Encoder/encoder_layer9/batchnorm/add/y?
$Encoder/encoder_layer9/batchnorm/addAddV27Encoder/encoder_layer9/batchnorm/ReadVariableOp:value:0/Encoder/encoder_layer9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2&
$Encoder/encoder_layer9/batchnorm/add?
&Encoder/encoder_layer9/batchnorm/RsqrtRsqrt(Encoder/encoder_layer9/batchnorm/add:z:0*
T0*
_output_shapes
:@2(
&Encoder/encoder_layer9/batchnorm/Rsqrt?
3Encoder/encoder_layer9/batchnorm/mul/ReadVariableOpReadVariableOp<encoder_encoder_layer9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype025
3Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp?
$Encoder/encoder_layer9/batchnorm/mulMul*Encoder/encoder_layer9/batchnorm/Rsqrt:y:0;Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2&
$Encoder/encoder_layer9/batchnorm/mul?
&Encoder/encoder_layer9/batchnorm/mul_1Mul)Encoder/encoder_layer8/Relu:activations:0(Encoder/encoder_layer9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2(
&Encoder/encoder_layer9/batchnorm/mul_1?
1Encoder/encoder_layer9/batchnorm/ReadVariableOp_1ReadVariableOp:encoder_encoder_layer9_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype023
1Encoder/encoder_layer9/batchnorm/ReadVariableOp_1?
&Encoder/encoder_layer9/batchnorm/mul_2Mul9Encoder/encoder_layer9/batchnorm/ReadVariableOp_1:value:0(Encoder/encoder_layer9/batchnorm/mul:z:0*
T0*
_output_shapes
:@2(
&Encoder/encoder_layer9/batchnorm/mul_2?
1Encoder/encoder_layer9/batchnorm/ReadVariableOp_2ReadVariableOp:encoder_encoder_layer9_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype023
1Encoder/encoder_layer9/batchnorm/ReadVariableOp_2?
$Encoder/encoder_layer9/batchnorm/subSub9Encoder/encoder_layer9/batchnorm/ReadVariableOp_2:value:0*Encoder/encoder_layer9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2&
$Encoder/encoder_layer9/batchnorm/sub?
&Encoder/encoder_layer9/batchnorm/add_1AddV2*Encoder/encoder_layer9/batchnorm/mul_1:z:0(Encoder/encoder_layer9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2(
&Encoder/encoder_layer9/batchnorm/add_1?
 Encoder/encoder_layer10/IdentityIdentity*Encoder/encoder_layer9/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????@2"
 Encoder/encoder_layer10/Identity?
,Encoder/output_encoder/MatMul/ReadVariableOpReadVariableOp5encoder_output_encoder_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02.
,Encoder/output_encoder/MatMul/ReadVariableOp?
Encoder/output_encoder/MatMulMatMul)Encoder/encoder_layer10/Identity:output:04Encoder/output_encoder/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
Encoder/output_encoder/MatMul?
-Encoder/output_encoder/BiasAdd/ReadVariableOpReadVariableOp6encoder_output_encoder_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-Encoder/output_encoder/BiasAdd/ReadVariableOp?
Encoder/output_encoder/BiasAddBiasAdd'Encoder/output_encoder/MatMul:product:05Encoder/output_encoder/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2 
Encoder/output_encoder/BiasAdd?
Encoder/output_encoder/ReluRelu'Encoder/output_encoder/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Encoder/output_encoder/Relu?
,Decoder/decoder_layer1/MatMul/ReadVariableOpReadVariableOp5decoder_decoder_layer1_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02.
,Decoder/decoder_layer1/MatMul/ReadVariableOp?
Decoder/decoder_layer1/MatMulMatMul)Encoder/output_encoder/Relu:activations:04Decoder/decoder_layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer1/MatMul?
-Decoder/decoder_layer1/BiasAdd/ReadVariableOpReadVariableOp6decoder_decoder_layer1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Decoder/decoder_layer1/BiasAdd/ReadVariableOp?
Decoder/decoder_layer1/BiasAddBiasAdd'Decoder/decoder_layer1/MatMul:product:05Decoder/decoder_layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Decoder/decoder_layer1/BiasAdd?
Decoder/decoder_layer1/ReluRelu'Decoder/decoder_layer1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer1/Relu?
,Decoder/decoder_layer2/MatMul/ReadVariableOpReadVariableOp5decoder_decoder_layer2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Decoder/decoder_layer2/MatMul/ReadVariableOp?
Decoder/decoder_layer2/MatMulMatMul)Decoder/decoder_layer1/Relu:activations:04Decoder/decoder_layer2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer2/MatMul?
-Decoder/decoder_layer2/BiasAdd/ReadVariableOpReadVariableOp6decoder_decoder_layer2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Decoder/decoder_layer2/BiasAdd/ReadVariableOp?
Decoder/decoder_layer2/BiasAddBiasAdd'Decoder/decoder_layer2/MatMul:product:05Decoder/decoder_layer2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Decoder/decoder_layer2/BiasAdd?
Decoder/decoder_layer2/ReluRelu'Decoder/decoder_layer2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer2/Relu?
/Decoder/decoder_layer3/batchnorm/ReadVariableOpReadVariableOp8decoder_decoder_layer3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/Decoder/decoder_layer3/batchnorm/ReadVariableOp?
&Decoder/decoder_layer3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&Decoder/decoder_layer3/batchnorm/add/y?
$Decoder/decoder_layer3/batchnorm/addAddV27Decoder/decoder_layer3/batchnorm/ReadVariableOp:value:0/Decoder/decoder_layer3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$Decoder/decoder_layer3/batchnorm/add?
&Decoder/decoder_layer3/batchnorm/RsqrtRsqrt(Decoder/decoder_layer3/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&Decoder/decoder_layer3/batchnorm/Rsqrt?
3Decoder/decoder_layer3/batchnorm/mul/ReadVariableOpReadVariableOp<decoder_decoder_layer3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp?
$Decoder/decoder_layer3/batchnorm/mulMul*Decoder/decoder_layer3/batchnorm/Rsqrt:y:0;Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$Decoder/decoder_layer3/batchnorm/mul?
&Decoder/decoder_layer3/batchnorm/mul_1Mul)Decoder/decoder_layer2/Relu:activations:0(Decoder/decoder_layer3/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&Decoder/decoder_layer3/batchnorm/mul_1?
1Decoder/decoder_layer3/batchnorm/ReadVariableOp_1ReadVariableOp:decoder_decoder_layer3_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1Decoder/decoder_layer3/batchnorm/ReadVariableOp_1?
&Decoder/decoder_layer3/batchnorm/mul_2Mul9Decoder/decoder_layer3/batchnorm/ReadVariableOp_1:value:0(Decoder/decoder_layer3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&Decoder/decoder_layer3/batchnorm/mul_2?
1Decoder/decoder_layer3/batchnorm/ReadVariableOp_2ReadVariableOp:decoder_decoder_layer3_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1Decoder/decoder_layer3/batchnorm/ReadVariableOp_2?
$Decoder/decoder_layer3/batchnorm/subSub9Decoder/decoder_layer3/batchnorm/ReadVariableOp_2:value:0*Decoder/decoder_layer3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$Decoder/decoder_layer3/batchnorm/sub?
&Decoder/decoder_layer3/batchnorm/add_1AddV2*Decoder/decoder_layer3/batchnorm/mul_1:z:0(Decoder/decoder_layer3/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&Decoder/decoder_layer3/batchnorm/add_1?
Decoder/decoder_layer4/IdentityIdentity*Decoder/decoder_layer3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2!
Decoder/decoder_layer4/Identity?
,Decoder/decoder_layer5/MatMul/ReadVariableOpReadVariableOp5decoder_decoder_layer5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Decoder/decoder_layer5/MatMul/ReadVariableOp?
Decoder/decoder_layer5/MatMulMatMul(Decoder/decoder_layer4/Identity:output:04Decoder/decoder_layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer5/MatMul?
-Decoder/decoder_layer5/BiasAdd/ReadVariableOpReadVariableOp6decoder_decoder_layer5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Decoder/decoder_layer5/BiasAdd/ReadVariableOp?
Decoder/decoder_layer5/BiasAddBiasAdd'Decoder/decoder_layer5/MatMul:product:05Decoder/decoder_layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Decoder/decoder_layer5/BiasAdd?
Decoder/decoder_layer5/ReluRelu'Decoder/decoder_layer5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer5/Relu?
,Decoder/decoder_layer6/MatMul/ReadVariableOpReadVariableOp5decoder_decoder_layer6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Decoder/decoder_layer6/MatMul/ReadVariableOp?
Decoder/decoder_layer6/MatMulMatMul)Decoder/decoder_layer5/Relu:activations:04Decoder/decoder_layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer6/MatMul?
-Decoder/decoder_layer6/BiasAdd/ReadVariableOpReadVariableOp6decoder_decoder_layer6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Decoder/decoder_layer6/BiasAdd/ReadVariableOp?
Decoder/decoder_layer6/BiasAddBiasAdd'Decoder/decoder_layer6/MatMul:product:05Decoder/decoder_layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Decoder/decoder_layer6/BiasAdd?
Decoder/decoder_layer6/ReluRelu'Decoder/decoder_layer6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer6/Relu?
,Decoder/decoder_layer7/MatMul/ReadVariableOpReadVariableOp5decoder_decoder_layer7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,Decoder/decoder_layer7/MatMul/ReadVariableOp?
Decoder/decoder_layer7/MatMulMatMul)Decoder/decoder_layer6/Relu:activations:04Decoder/decoder_layer7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer7/MatMul?
-Decoder/decoder_layer7/BiasAdd/ReadVariableOpReadVariableOp6decoder_decoder_layer7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Decoder/decoder_layer7/BiasAdd/ReadVariableOp?
Decoder/decoder_layer7/BiasAddBiasAdd'Decoder/decoder_layer7/MatMul:product:05Decoder/decoder_layer7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
Decoder/decoder_layer7/BiasAdd?
Decoder/decoder_layer7/ReluRelu'Decoder/decoder_layer7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Decoder/decoder_layer7/Relu?
,Decoder/decoder_layer8/MatMul/ReadVariableOpReadVariableOp5decoder_decoder_layer8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02.
,Decoder/decoder_layer8/MatMul/ReadVariableOp?
Decoder/decoder_layer8/MatMulMatMul)Decoder/decoder_layer7/Relu:activations:04Decoder/decoder_layer8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Decoder/decoder_layer8/MatMul?
-Decoder/decoder_layer8/BiasAdd/ReadVariableOpReadVariableOp6decoder_decoder_layer8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-Decoder/decoder_layer8/BiasAdd/ReadVariableOp?
Decoder/decoder_layer8/BiasAddBiasAdd'Decoder/decoder_layer8/MatMul:product:05Decoder/decoder_layer8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
Decoder/decoder_layer8/BiasAdd?
Decoder/decoder_layer8/ReluRelu'Decoder/decoder_layer8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Decoder/decoder_layer8/Relu?
/Decoder/decoder_layer9/batchnorm/ReadVariableOpReadVariableOp8decoder_decoder_layer9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype021
/Decoder/decoder_layer9/batchnorm/ReadVariableOp?
&Decoder/decoder_layer9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&Decoder/decoder_layer9/batchnorm/add/y?
$Decoder/decoder_layer9/batchnorm/addAddV27Decoder/decoder_layer9/batchnorm/ReadVariableOp:value:0/Decoder/decoder_layer9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2&
$Decoder/decoder_layer9/batchnorm/add?
&Decoder/decoder_layer9/batchnorm/RsqrtRsqrt(Decoder/decoder_layer9/batchnorm/add:z:0*
T0*
_output_shapes
:@2(
&Decoder/decoder_layer9/batchnorm/Rsqrt?
3Decoder/decoder_layer9/batchnorm/mul/ReadVariableOpReadVariableOp<decoder_decoder_layer9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype025
3Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp?
$Decoder/decoder_layer9/batchnorm/mulMul*Decoder/decoder_layer9/batchnorm/Rsqrt:y:0;Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2&
$Decoder/decoder_layer9/batchnorm/mul?
&Decoder/decoder_layer9/batchnorm/mul_1Mul)Decoder/decoder_layer8/Relu:activations:0(Decoder/decoder_layer9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2(
&Decoder/decoder_layer9/batchnorm/mul_1?
1Decoder/decoder_layer9/batchnorm/ReadVariableOp_1ReadVariableOp:decoder_decoder_layer9_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype023
1Decoder/decoder_layer9/batchnorm/ReadVariableOp_1?
&Decoder/decoder_layer9/batchnorm/mul_2Mul9Decoder/decoder_layer9/batchnorm/ReadVariableOp_1:value:0(Decoder/decoder_layer9/batchnorm/mul:z:0*
T0*
_output_shapes
:@2(
&Decoder/decoder_layer9/batchnorm/mul_2?
1Decoder/decoder_layer9/batchnorm/ReadVariableOp_2ReadVariableOp:decoder_decoder_layer9_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype023
1Decoder/decoder_layer9/batchnorm/ReadVariableOp_2?
$Decoder/decoder_layer9/batchnorm/subSub9Decoder/decoder_layer9/batchnorm/ReadVariableOp_2:value:0*Decoder/decoder_layer9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2&
$Decoder/decoder_layer9/batchnorm/sub?
&Decoder/decoder_layer9/batchnorm/add_1AddV2*Decoder/decoder_layer9/batchnorm/mul_1:z:0(Decoder/decoder_layer9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2(
&Decoder/decoder_layer9/batchnorm/add_1?
 Decoder/decoder_layer10/IdentityIdentity*Decoder/decoder_layer9/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????@2"
 Decoder/decoder_layer10/Identity?
*Decoder/output_layer/MatMul/ReadVariableOpReadVariableOp3decoder_output_layer_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02,
*Decoder/output_layer/MatMul/ReadVariableOp?
Decoder/output_layer/MatMulMatMul)Decoder/decoder_layer10/Identity:output:02Decoder/output_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Decoder/output_layer/MatMul?
+Decoder/output_layer/BiasAdd/ReadVariableOpReadVariableOp4decoder_output_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+Decoder/output_layer/BiasAdd/ReadVariableOp?
Decoder/output_layer/BiasAddBiasAdd%Decoder/output_layer/MatMul:product:03Decoder/output_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Decoder/output_layer/BiasAdd?
Decoder/output_layer/SigmoidSigmoid%Decoder/output_layer/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Decoder/output_layer/Sigmoid?
IdentityIdentity Decoder/output_layer/Sigmoid:y:0.^Decoder/decoder_layer1/BiasAdd/ReadVariableOp-^Decoder/decoder_layer1/MatMul/ReadVariableOp.^Decoder/decoder_layer2/BiasAdd/ReadVariableOp-^Decoder/decoder_layer2/MatMul/ReadVariableOp0^Decoder/decoder_layer3/batchnorm/ReadVariableOp2^Decoder/decoder_layer3/batchnorm/ReadVariableOp_12^Decoder/decoder_layer3/batchnorm/ReadVariableOp_24^Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp.^Decoder/decoder_layer5/BiasAdd/ReadVariableOp-^Decoder/decoder_layer5/MatMul/ReadVariableOp.^Decoder/decoder_layer6/BiasAdd/ReadVariableOp-^Decoder/decoder_layer6/MatMul/ReadVariableOp.^Decoder/decoder_layer7/BiasAdd/ReadVariableOp-^Decoder/decoder_layer7/MatMul/ReadVariableOp.^Decoder/decoder_layer8/BiasAdd/ReadVariableOp-^Decoder/decoder_layer8/MatMul/ReadVariableOp0^Decoder/decoder_layer9/batchnorm/ReadVariableOp2^Decoder/decoder_layer9/batchnorm/ReadVariableOp_12^Decoder/decoder_layer9/batchnorm/ReadVariableOp_24^Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp,^Decoder/output_layer/BiasAdd/ReadVariableOp+^Decoder/output_layer/MatMul/ReadVariableOp.^Encoder/encoder_layer1/BiasAdd/ReadVariableOp-^Encoder/encoder_layer1/MatMul/ReadVariableOp.^Encoder/encoder_layer2/BiasAdd/ReadVariableOp-^Encoder/encoder_layer2/MatMul/ReadVariableOp0^Encoder/encoder_layer3/batchnorm/ReadVariableOp2^Encoder/encoder_layer3/batchnorm/ReadVariableOp_12^Encoder/encoder_layer3/batchnorm/ReadVariableOp_24^Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp.^Encoder/encoder_layer5/BiasAdd/ReadVariableOp-^Encoder/encoder_layer5/MatMul/ReadVariableOp.^Encoder/encoder_layer6/BiasAdd/ReadVariableOp-^Encoder/encoder_layer6/MatMul/ReadVariableOp.^Encoder/encoder_layer7/BiasAdd/ReadVariableOp-^Encoder/encoder_layer7/MatMul/ReadVariableOp.^Encoder/encoder_layer8/BiasAdd/ReadVariableOp-^Encoder/encoder_layer8/MatMul/ReadVariableOp0^Encoder/encoder_layer9/batchnorm/ReadVariableOp2^Encoder/encoder_layer9/batchnorm/ReadVariableOp_12^Encoder/encoder_layer9/batchnorm/ReadVariableOp_24^Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp.^Encoder/output_encoder/BiasAdd/ReadVariableOp-^Encoder/output_encoder/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????::::::::::::::::::::::::::::::::::::::::::::2^
-Decoder/decoder_layer1/BiasAdd/ReadVariableOp-Decoder/decoder_layer1/BiasAdd/ReadVariableOp2\
,Decoder/decoder_layer1/MatMul/ReadVariableOp,Decoder/decoder_layer1/MatMul/ReadVariableOp2^
-Decoder/decoder_layer2/BiasAdd/ReadVariableOp-Decoder/decoder_layer2/BiasAdd/ReadVariableOp2\
,Decoder/decoder_layer2/MatMul/ReadVariableOp,Decoder/decoder_layer2/MatMul/ReadVariableOp2b
/Decoder/decoder_layer3/batchnorm/ReadVariableOp/Decoder/decoder_layer3/batchnorm/ReadVariableOp2f
1Decoder/decoder_layer3/batchnorm/ReadVariableOp_11Decoder/decoder_layer3/batchnorm/ReadVariableOp_12f
1Decoder/decoder_layer3/batchnorm/ReadVariableOp_21Decoder/decoder_layer3/batchnorm/ReadVariableOp_22j
3Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp3Decoder/decoder_layer3/batchnorm/mul/ReadVariableOp2^
-Decoder/decoder_layer5/BiasAdd/ReadVariableOp-Decoder/decoder_layer5/BiasAdd/ReadVariableOp2\
,Decoder/decoder_layer5/MatMul/ReadVariableOp,Decoder/decoder_layer5/MatMul/ReadVariableOp2^
-Decoder/decoder_layer6/BiasAdd/ReadVariableOp-Decoder/decoder_layer6/BiasAdd/ReadVariableOp2\
,Decoder/decoder_layer6/MatMul/ReadVariableOp,Decoder/decoder_layer6/MatMul/ReadVariableOp2^
-Decoder/decoder_layer7/BiasAdd/ReadVariableOp-Decoder/decoder_layer7/BiasAdd/ReadVariableOp2\
,Decoder/decoder_layer7/MatMul/ReadVariableOp,Decoder/decoder_layer7/MatMul/ReadVariableOp2^
-Decoder/decoder_layer8/BiasAdd/ReadVariableOp-Decoder/decoder_layer8/BiasAdd/ReadVariableOp2\
,Decoder/decoder_layer8/MatMul/ReadVariableOp,Decoder/decoder_layer8/MatMul/ReadVariableOp2b
/Decoder/decoder_layer9/batchnorm/ReadVariableOp/Decoder/decoder_layer9/batchnorm/ReadVariableOp2f
1Decoder/decoder_layer9/batchnorm/ReadVariableOp_11Decoder/decoder_layer9/batchnorm/ReadVariableOp_12f
1Decoder/decoder_layer9/batchnorm/ReadVariableOp_21Decoder/decoder_layer9/batchnorm/ReadVariableOp_22j
3Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp3Decoder/decoder_layer9/batchnorm/mul/ReadVariableOp2Z
+Decoder/output_layer/BiasAdd/ReadVariableOp+Decoder/output_layer/BiasAdd/ReadVariableOp2X
*Decoder/output_layer/MatMul/ReadVariableOp*Decoder/output_layer/MatMul/ReadVariableOp2^
-Encoder/encoder_layer1/BiasAdd/ReadVariableOp-Encoder/encoder_layer1/BiasAdd/ReadVariableOp2\
,Encoder/encoder_layer1/MatMul/ReadVariableOp,Encoder/encoder_layer1/MatMul/ReadVariableOp2^
-Encoder/encoder_layer2/BiasAdd/ReadVariableOp-Encoder/encoder_layer2/BiasAdd/ReadVariableOp2\
,Encoder/encoder_layer2/MatMul/ReadVariableOp,Encoder/encoder_layer2/MatMul/ReadVariableOp2b
/Encoder/encoder_layer3/batchnorm/ReadVariableOp/Encoder/encoder_layer3/batchnorm/ReadVariableOp2f
1Encoder/encoder_layer3/batchnorm/ReadVariableOp_11Encoder/encoder_layer3/batchnorm/ReadVariableOp_12f
1Encoder/encoder_layer3/batchnorm/ReadVariableOp_21Encoder/encoder_layer3/batchnorm/ReadVariableOp_22j
3Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp3Encoder/encoder_layer3/batchnorm/mul/ReadVariableOp2^
-Encoder/encoder_layer5/BiasAdd/ReadVariableOp-Encoder/encoder_layer5/BiasAdd/ReadVariableOp2\
,Encoder/encoder_layer5/MatMul/ReadVariableOp,Encoder/encoder_layer5/MatMul/ReadVariableOp2^
-Encoder/encoder_layer6/BiasAdd/ReadVariableOp-Encoder/encoder_layer6/BiasAdd/ReadVariableOp2\
,Encoder/encoder_layer6/MatMul/ReadVariableOp,Encoder/encoder_layer6/MatMul/ReadVariableOp2^
-Encoder/encoder_layer7/BiasAdd/ReadVariableOp-Encoder/encoder_layer7/BiasAdd/ReadVariableOp2\
,Encoder/encoder_layer7/MatMul/ReadVariableOp,Encoder/encoder_layer7/MatMul/ReadVariableOp2^
-Encoder/encoder_layer8/BiasAdd/ReadVariableOp-Encoder/encoder_layer8/BiasAdd/ReadVariableOp2\
,Encoder/encoder_layer8/MatMul/ReadVariableOp,Encoder/encoder_layer8/MatMul/ReadVariableOp2b
/Encoder/encoder_layer9/batchnorm/ReadVariableOp/Encoder/encoder_layer9/batchnorm/ReadVariableOp2f
1Encoder/encoder_layer9/batchnorm/ReadVariableOp_11Encoder/encoder_layer9/batchnorm/ReadVariableOp_12f
1Encoder/encoder_layer9/batchnorm/ReadVariableOp_21Encoder/encoder_layer9/batchnorm/ReadVariableOp_22j
3Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp3Encoder/encoder_layer9/batchnorm/mul/ReadVariableOp2^
-Encoder/output_encoder/BiasAdd/ReadVariableOp-Encoder/output_encoder/BiasAdd/ReadVariableOp2\
,Encoder/output_encoder/MatMul/ReadVariableOp,Encoder/output_encoder/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_encoder_layer8_layer_call_fn_8023609

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer8_layer_call_and_return_conditional_losses_80199982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
k
L__inference_decoder_layer10_layer_call_and_return_conditional_losses_8024061

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
I__inference_output_layer_layer_call_and_return_conditional_losses_8020970

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
K__inference_decoder_layer2_layer_call_and_return_conditional_losses_8023769

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?0
?
K__inference_encoder_layer3_layer_call_and_return_conditional_losses_8019599

inputs
assignmovingavg_8019574
assignmovingavg_1_8019580)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8019574*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_8019574*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8019574*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8019574*
_output_shapes
:@2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_8019574AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8019574*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8019580*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_8019580*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8019580*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8019580*
_output_shapes
:@2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_8019580AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8019580*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
j
K__inference_encoder_layer4_layer_call_and_return_conditional_losses_8019888

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
K__inference_encoder_layer6_layer_call_and_return_conditional_losses_8019944

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_decoder_layer8_layer_call_fn_8023967

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer8_layer_call_and_return_conditional_losses_80208782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?@
?	
D__inference_Encoder_layer_call_and_return_conditional_losses_8020228

inputs
encoder_layer1_8020172
encoder_layer1_8020174
encoder_layer2_8020177
encoder_layer2_8020179
encoder_layer3_8020182
encoder_layer3_8020184
encoder_layer3_8020186
encoder_layer3_8020188
encoder_layer5_8020192
encoder_layer5_8020194
encoder_layer6_8020197
encoder_layer6_8020199
encoder_layer7_8020202
encoder_layer7_8020204
encoder_layer8_8020207
encoder_layer8_8020209
encoder_layer9_8020212
encoder_layer9_8020214
encoder_layer9_8020216
encoder_layer9_8020218
output_encoder_8020222
output_encoder_8020224
identity??&encoder_layer1/StatefulPartitionedCall?'encoder_layer10/StatefulPartitionedCall?&encoder_layer2/StatefulPartitionedCall?&encoder_layer3/StatefulPartitionedCall?&encoder_layer4/StatefulPartitionedCall?&encoder_layer5/StatefulPartitionedCall?&encoder_layer6/StatefulPartitionedCall?&encoder_layer7/StatefulPartitionedCall?&encoder_layer8/StatefulPartitionedCall?&encoder_layer9/StatefulPartitionedCall?&output_encoder/StatefulPartitionedCall?
&encoder_layer1/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_layer1_8020172encoder_layer1_8020174*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_80197982(
&encoder_layer1/StatefulPartitionedCall?
&encoder_layer2/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer1/StatefulPartitionedCall:output:0encoder_layer2_8020177encoder_layer2_8020179*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer2_layer_call_and_return_conditional_losses_80198252(
&encoder_layer2/StatefulPartitionedCall?
&encoder_layer3/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer2/StatefulPartitionedCall:output:0encoder_layer3_8020182encoder_layer3_8020184encoder_layer3_8020186encoder_layer3_8020188*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer3_layer_call_and_return_conditional_losses_80195992(
&encoder_layer3/StatefulPartitionedCall?
&encoder_layer4/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer4_layer_call_and_return_conditional_losses_80198882(
&encoder_layer4/StatefulPartitionedCall?
&encoder_layer5/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer4/StatefulPartitionedCall:output:0encoder_layer5_8020192encoder_layer5_8020194*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer5_layer_call_and_return_conditional_losses_80199172(
&encoder_layer5/StatefulPartitionedCall?
&encoder_layer6/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer5/StatefulPartitionedCall:output:0encoder_layer6_8020197encoder_layer6_8020199*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer6_layer_call_and_return_conditional_losses_80199442(
&encoder_layer6/StatefulPartitionedCall?
&encoder_layer7/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer6/StatefulPartitionedCall:output:0encoder_layer7_8020202encoder_layer7_8020204*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer7_layer_call_and_return_conditional_losses_80199712(
&encoder_layer7/StatefulPartitionedCall?
&encoder_layer8/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer7/StatefulPartitionedCall:output:0encoder_layer8_8020207encoder_layer8_8020209*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer8_layer_call_and_return_conditional_losses_80199982(
&encoder_layer8/StatefulPartitionedCall?
&encoder_layer9/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer8/StatefulPartitionedCall:output:0encoder_layer9_8020212encoder_layer9_8020214encoder_layer9_8020216encoder_layer9_8020218*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer9_layer_call_and_return_conditional_losses_80197392(
&encoder_layer9/StatefulPartitionedCall?
'encoder_layer10/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer9/StatefulPartitionedCall:output:0'^encoder_layer4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_encoder_layer10_layer_call_and_return_conditional_losses_80200612)
'encoder_layer10/StatefulPartitionedCall?
&output_encoder/StatefulPartitionedCallStatefulPartitionedCall0encoder_layer10/StatefulPartitionedCall:output:0output_encoder_8020222output_encoder_8020224*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_output_encoder_layer_call_and_return_conditional_losses_80200902(
&output_encoder/StatefulPartitionedCall?
IdentityIdentity/output_encoder/StatefulPartitionedCall:output:0'^encoder_layer1/StatefulPartitionedCall(^encoder_layer10/StatefulPartitionedCall'^encoder_layer2/StatefulPartitionedCall'^encoder_layer3/StatefulPartitionedCall'^encoder_layer4/StatefulPartitionedCall'^encoder_layer5/StatefulPartitionedCall'^encoder_layer6/StatefulPartitionedCall'^encoder_layer7/StatefulPartitionedCall'^encoder_layer8/StatefulPartitionedCall'^encoder_layer9/StatefulPartitionedCall'^output_encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2P
&encoder_layer1/StatefulPartitionedCall&encoder_layer1/StatefulPartitionedCall2R
'encoder_layer10/StatefulPartitionedCall'encoder_layer10/StatefulPartitionedCall2P
&encoder_layer2/StatefulPartitionedCall&encoder_layer2/StatefulPartitionedCall2P
&encoder_layer3/StatefulPartitionedCall&encoder_layer3/StatefulPartitionedCall2P
&encoder_layer4/StatefulPartitionedCall&encoder_layer4/StatefulPartitionedCall2P
&encoder_layer5/StatefulPartitionedCall&encoder_layer5/StatefulPartitionedCall2P
&encoder_layer6/StatefulPartitionedCall&encoder_layer6/StatefulPartitionedCall2P
&encoder_layer7/StatefulPartitionedCall&encoder_layer7/StatefulPartitionedCall2P
&encoder_layer8/StatefulPartitionedCall&encoder_layer8/StatefulPartitionedCall2P
&encoder_layer9/StatefulPartitionedCall&encoder_layer9/StatefulPartitionedCall2P
&output_encoder/StatefulPartitionedCall&output_encoder/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_decoder_layer3_layer_call_and_return_conditional_losses_8023834

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
K__inference_decoder_layer1_layer_call_and_return_conditional_losses_8023749

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
0__inference_decoder_layer3_layer_call_fn_8023847

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer3_layer_call_and_return_conditional_losses_80204792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
k
L__inference_encoder_layer10_layer_call_and_return_conditional_losses_8020061

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
0__inference_encoder_layer3_layer_call_fn_8023489

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer3_layer_call_and_return_conditional_losses_80195992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?<
?
D__inference_Decoder_layer_call_and_return_conditional_losses_8021216

inputs
decoder_layer1_8021160
decoder_layer1_8021162
decoder_layer2_8021165
decoder_layer2_8021167
decoder_layer3_8021170
decoder_layer3_8021172
decoder_layer3_8021174
decoder_layer3_8021176
decoder_layer5_8021180
decoder_layer5_8021182
decoder_layer6_8021185
decoder_layer6_8021187
decoder_layer7_8021190
decoder_layer7_8021192
decoder_layer8_8021195
decoder_layer8_8021197
decoder_layer9_8021200
decoder_layer9_8021202
decoder_layer9_8021204
decoder_layer9_8021206
output_layer_8021210
output_layer_8021212
identity??&decoder_layer1/StatefulPartitionedCall?&decoder_layer2/StatefulPartitionedCall?&decoder_layer3/StatefulPartitionedCall?&decoder_layer5/StatefulPartitionedCall?&decoder_layer6/StatefulPartitionedCall?&decoder_layer7/StatefulPartitionedCall?&decoder_layer8/StatefulPartitionedCall?&decoder_layer9/StatefulPartitionedCall?$output_layer/StatefulPartitionedCall?
&decoder_layer1/StatefulPartitionedCallStatefulPartitionedCallinputsdecoder_layer1_8021160decoder_layer1_8021162*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer1_layer_call_and_return_conditional_losses_80206782(
&decoder_layer1/StatefulPartitionedCall?
&decoder_layer2/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer1/StatefulPartitionedCall:output:0decoder_layer2_8021165decoder_layer2_8021167*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer2_layer_call_and_return_conditional_losses_80207052(
&decoder_layer2/StatefulPartitionedCall?
&decoder_layer3/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer2/StatefulPartitionedCall:output:0decoder_layer3_8021170decoder_layer3_8021172decoder_layer3_8021174decoder_layer3_8021176*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer3_layer_call_and_return_conditional_losses_80205122(
&decoder_layer3/StatefulPartitionedCall?
decoder_layer4/PartitionedCallPartitionedCall/decoder_layer3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer4_layer_call_and_return_conditional_losses_80207732 
decoder_layer4/PartitionedCall?
&decoder_layer5/StatefulPartitionedCallStatefulPartitionedCall'decoder_layer4/PartitionedCall:output:0decoder_layer5_8021180decoder_layer5_8021182*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer5_layer_call_and_return_conditional_losses_80207972(
&decoder_layer5/StatefulPartitionedCall?
&decoder_layer6/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer5/StatefulPartitionedCall:output:0decoder_layer6_8021185decoder_layer6_8021187*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer6_layer_call_and_return_conditional_losses_80208242(
&decoder_layer6/StatefulPartitionedCall?
&decoder_layer7/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer6/StatefulPartitionedCall:output:0decoder_layer7_8021190decoder_layer7_8021192*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer7_layer_call_and_return_conditional_losses_80208512(
&decoder_layer7/StatefulPartitionedCall?
&decoder_layer8/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer7/StatefulPartitionedCall:output:0decoder_layer8_8021195decoder_layer8_8021197*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer8_layer_call_and_return_conditional_losses_80208782(
&decoder_layer8/StatefulPartitionedCall?
&decoder_layer9/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer8/StatefulPartitionedCall:output:0decoder_layer9_8021200decoder_layer9_8021202decoder_layer9_8021204decoder_layer9_8021206*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer9_layer_call_and_return_conditional_losses_80206522(
&decoder_layer9/StatefulPartitionedCall?
decoder_layer10/PartitionedCallPartitionedCall/decoder_layer9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_decoder_layer10_layer_call_and_return_conditional_losses_80209462!
decoder_layer10/PartitionedCall?
$output_layer/StatefulPartitionedCallStatefulPartitionedCall(decoder_layer10/PartitionedCall:output:0output_layer_8021210output_layer_8021212*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_80209702&
$output_layer/StatefulPartitionedCall?
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0'^decoder_layer1/StatefulPartitionedCall'^decoder_layer2/StatefulPartitionedCall'^decoder_layer3/StatefulPartitionedCall'^decoder_layer5/StatefulPartitionedCall'^decoder_layer6/StatefulPartitionedCall'^decoder_layer7/StatefulPartitionedCall'^decoder_layer8/StatefulPartitionedCall'^decoder_layer9/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????
::::::::::::::::::::::2P
&decoder_layer1/StatefulPartitionedCall&decoder_layer1/StatefulPartitionedCall2P
&decoder_layer2/StatefulPartitionedCall&decoder_layer2/StatefulPartitionedCall2P
&decoder_layer3/StatefulPartitionedCall&decoder_layer3/StatefulPartitionedCall2P
&decoder_layer5/StatefulPartitionedCall&decoder_layer5/StatefulPartitionedCall2P
&decoder_layer6/StatefulPartitionedCall&decoder_layer6/StatefulPartitionedCall2P
&decoder_layer7/StatefulPartitionedCall&decoder_layer7/StatefulPartitionedCall2P
&decoder_layer8/StatefulPartitionedCall&decoder_layer8/StatefulPartitionedCall2P
&decoder_layer9/StatefulPartitionedCall&decoder_layer9/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
0__inference_decoder_layer9_layer_call_fn_8024049

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer9_layer_call_and_return_conditional_losses_80206522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
j
L__inference_encoder_layer10_layer_call_and_return_conditional_losses_8020066

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
0__inference_encoder_layer9_layer_call_fn_8023678

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer9_layer_call_and_return_conditional_losses_80197392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
M
1__inference_encoder_layer10_layer_call_fn_8023718

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_encoder_layer10_layer_call_and_return_conditional_losses_80200662
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
D__inference_Encoder_layer_call_and_return_conditional_losses_8022964

inputs1
-encoder_layer1_matmul_readvariableop_resource2
.encoder_layer1_biasadd_readvariableop_resource1
-encoder_layer2_matmul_readvariableop_resource2
.encoder_layer2_biasadd_readvariableop_resource4
0encoder_layer3_batchnorm_readvariableop_resource8
4encoder_layer3_batchnorm_mul_readvariableop_resource6
2encoder_layer3_batchnorm_readvariableop_1_resource6
2encoder_layer3_batchnorm_readvariableop_2_resource1
-encoder_layer5_matmul_readvariableop_resource2
.encoder_layer5_biasadd_readvariableop_resource1
-encoder_layer6_matmul_readvariableop_resource2
.encoder_layer6_biasadd_readvariableop_resource1
-encoder_layer7_matmul_readvariableop_resource2
.encoder_layer7_biasadd_readvariableop_resource1
-encoder_layer8_matmul_readvariableop_resource2
.encoder_layer8_biasadd_readvariableop_resource4
0encoder_layer9_batchnorm_readvariableop_resource8
4encoder_layer9_batchnorm_mul_readvariableop_resource6
2encoder_layer9_batchnorm_readvariableop_1_resource6
2encoder_layer9_batchnorm_readvariableop_2_resource1
-output_encoder_matmul_readvariableop_resource2
.output_encoder_biasadd_readvariableop_resource
identity??%encoder_layer1/BiasAdd/ReadVariableOp?$encoder_layer1/MatMul/ReadVariableOp?%encoder_layer2/BiasAdd/ReadVariableOp?$encoder_layer2/MatMul/ReadVariableOp?'encoder_layer3/batchnorm/ReadVariableOp?)encoder_layer3/batchnorm/ReadVariableOp_1?)encoder_layer3/batchnorm/ReadVariableOp_2?+encoder_layer3/batchnorm/mul/ReadVariableOp?%encoder_layer5/BiasAdd/ReadVariableOp?$encoder_layer5/MatMul/ReadVariableOp?%encoder_layer6/BiasAdd/ReadVariableOp?$encoder_layer6/MatMul/ReadVariableOp?%encoder_layer7/BiasAdd/ReadVariableOp?$encoder_layer7/MatMul/ReadVariableOp?%encoder_layer8/BiasAdd/ReadVariableOp?$encoder_layer8/MatMul/ReadVariableOp?'encoder_layer9/batchnorm/ReadVariableOp?)encoder_layer9/batchnorm/ReadVariableOp_1?)encoder_layer9/batchnorm/ReadVariableOp_2?+encoder_layer9/batchnorm/mul/ReadVariableOp?%output_encoder/BiasAdd/ReadVariableOp?$output_encoder/MatMul/ReadVariableOp?
$encoder_layer1/MatMul/ReadVariableOpReadVariableOp-encoder_layer1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$encoder_layer1/MatMul/ReadVariableOp?
encoder_layer1/MatMulMatMulinputs,encoder_layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer1/MatMul?
%encoder_layer1/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%encoder_layer1/BiasAdd/ReadVariableOp?
encoder_layer1/BiasAddBiasAddencoder_layer1/MatMul:product:0-encoder_layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer1/BiasAdd?
encoder_layer1/ReluReluencoder_layer1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
encoder_layer1/Relu?
$encoder_layer2/MatMul/ReadVariableOpReadVariableOp-encoder_layer2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02&
$encoder_layer2/MatMul/ReadVariableOp?
encoder_layer2/MatMulMatMul!encoder_layer1/Relu:activations:0,encoder_layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
encoder_layer2/MatMul?
%encoder_layer2/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%encoder_layer2/BiasAdd/ReadVariableOp?
encoder_layer2/BiasAddBiasAddencoder_layer2/MatMul:product:0-encoder_layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
encoder_layer2/BiasAdd?
encoder_layer2/ReluReluencoder_layer2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
encoder_layer2/Relu?
'encoder_layer3/batchnorm/ReadVariableOpReadVariableOp0encoder_layer3_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02)
'encoder_layer3/batchnorm/ReadVariableOp?
encoder_layer3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2 
encoder_layer3/batchnorm/add/y?
encoder_layer3/batchnorm/addAddV2/encoder_layer3/batchnorm/ReadVariableOp:value:0'encoder_layer3/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
encoder_layer3/batchnorm/add?
encoder_layer3/batchnorm/RsqrtRsqrt encoder_layer3/batchnorm/add:z:0*
T0*
_output_shapes
:@2 
encoder_layer3/batchnorm/Rsqrt?
+encoder_layer3/batchnorm/mul/ReadVariableOpReadVariableOp4encoder_layer3_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02-
+encoder_layer3/batchnorm/mul/ReadVariableOp?
encoder_layer3/batchnorm/mulMul"encoder_layer3/batchnorm/Rsqrt:y:03encoder_layer3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
encoder_layer3/batchnorm/mul?
encoder_layer3/batchnorm/mul_1Mul!encoder_layer2/Relu:activations:0 encoder_layer3/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2 
encoder_layer3/batchnorm/mul_1?
)encoder_layer3/batchnorm/ReadVariableOp_1ReadVariableOp2encoder_layer3_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02+
)encoder_layer3/batchnorm/ReadVariableOp_1?
encoder_layer3/batchnorm/mul_2Mul1encoder_layer3/batchnorm/ReadVariableOp_1:value:0 encoder_layer3/batchnorm/mul:z:0*
T0*
_output_shapes
:@2 
encoder_layer3/batchnorm/mul_2?
)encoder_layer3/batchnorm/ReadVariableOp_2ReadVariableOp2encoder_layer3_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02+
)encoder_layer3/batchnorm/ReadVariableOp_2?
encoder_layer3/batchnorm/subSub1encoder_layer3/batchnorm/ReadVariableOp_2:value:0"encoder_layer3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
encoder_layer3/batchnorm/sub?
encoder_layer3/batchnorm/add_1AddV2"encoder_layer3/batchnorm/mul_1:z:0 encoder_layer3/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2 
encoder_layer3/batchnorm/add_1?
encoder_layer4/IdentityIdentity"encoder_layer3/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????@2
encoder_layer4/Identity?
$encoder_layer5/MatMul/ReadVariableOpReadVariableOp-encoder_layer5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$encoder_layer5/MatMul/ReadVariableOp?
encoder_layer5/MatMulMatMul encoder_layer4/Identity:output:0,encoder_layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer5/MatMul?
%encoder_layer5/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%encoder_layer5/BiasAdd/ReadVariableOp?
encoder_layer5/BiasAddBiasAddencoder_layer5/MatMul:product:0-encoder_layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer5/BiasAdd?
encoder_layer5/ReluReluencoder_layer5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
encoder_layer5/Relu?
$encoder_layer6/MatMul/ReadVariableOpReadVariableOp-encoder_layer6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$encoder_layer6/MatMul/ReadVariableOp?
encoder_layer6/MatMulMatMul!encoder_layer5/Relu:activations:0,encoder_layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer6/MatMul?
%encoder_layer6/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%encoder_layer6/BiasAdd/ReadVariableOp?
encoder_layer6/BiasAddBiasAddencoder_layer6/MatMul:product:0-encoder_layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer6/BiasAdd?
encoder_layer6/ReluReluencoder_layer6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
encoder_layer6/Relu?
$encoder_layer7/MatMul/ReadVariableOpReadVariableOp-encoder_layer7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$encoder_layer7/MatMul/ReadVariableOp?
encoder_layer7/MatMulMatMul!encoder_layer6/Relu:activations:0,encoder_layer7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer7/MatMul?
%encoder_layer7/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%encoder_layer7/BiasAdd/ReadVariableOp?
encoder_layer7/BiasAddBiasAddencoder_layer7/MatMul:product:0-encoder_layer7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
encoder_layer7/BiasAdd?
encoder_layer7/ReluReluencoder_layer7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
encoder_layer7/Relu?
$encoder_layer8/MatMul/ReadVariableOpReadVariableOp-encoder_layer8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02&
$encoder_layer8/MatMul/ReadVariableOp?
encoder_layer8/MatMulMatMul!encoder_layer7/Relu:activations:0,encoder_layer8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
encoder_layer8/MatMul?
%encoder_layer8/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%encoder_layer8/BiasAdd/ReadVariableOp?
encoder_layer8/BiasAddBiasAddencoder_layer8/MatMul:product:0-encoder_layer8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
encoder_layer8/BiasAdd?
encoder_layer8/ReluReluencoder_layer8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
encoder_layer8/Relu?
'encoder_layer9/batchnorm/ReadVariableOpReadVariableOp0encoder_layer9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02)
'encoder_layer9/batchnorm/ReadVariableOp?
encoder_layer9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2 
encoder_layer9/batchnorm/add/y?
encoder_layer9/batchnorm/addAddV2/encoder_layer9/batchnorm/ReadVariableOp:value:0'encoder_layer9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
encoder_layer9/batchnorm/add?
encoder_layer9/batchnorm/RsqrtRsqrt encoder_layer9/batchnorm/add:z:0*
T0*
_output_shapes
:@2 
encoder_layer9/batchnorm/Rsqrt?
+encoder_layer9/batchnorm/mul/ReadVariableOpReadVariableOp4encoder_layer9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02-
+encoder_layer9/batchnorm/mul/ReadVariableOp?
encoder_layer9/batchnorm/mulMul"encoder_layer9/batchnorm/Rsqrt:y:03encoder_layer9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
encoder_layer9/batchnorm/mul?
encoder_layer9/batchnorm/mul_1Mul!encoder_layer8/Relu:activations:0 encoder_layer9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2 
encoder_layer9/batchnorm/mul_1?
)encoder_layer9/batchnorm/ReadVariableOp_1ReadVariableOp2encoder_layer9_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02+
)encoder_layer9/batchnorm/ReadVariableOp_1?
encoder_layer9/batchnorm/mul_2Mul1encoder_layer9/batchnorm/ReadVariableOp_1:value:0 encoder_layer9/batchnorm/mul:z:0*
T0*
_output_shapes
:@2 
encoder_layer9/batchnorm/mul_2?
)encoder_layer9/batchnorm/ReadVariableOp_2ReadVariableOp2encoder_layer9_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02+
)encoder_layer9/batchnorm/ReadVariableOp_2?
encoder_layer9/batchnorm/subSub1encoder_layer9/batchnorm/ReadVariableOp_2:value:0"encoder_layer9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
encoder_layer9/batchnorm/sub?
encoder_layer9/batchnorm/add_1AddV2"encoder_layer9/batchnorm/mul_1:z:0 encoder_layer9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2 
encoder_layer9/batchnorm/add_1?
encoder_layer10/IdentityIdentity"encoder_layer9/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????@2
encoder_layer10/Identity?
$output_encoder/MatMul/ReadVariableOpReadVariableOp-output_encoder_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02&
$output_encoder/MatMul/ReadVariableOp?
output_encoder/MatMulMatMul!encoder_layer10/Identity:output:0,output_encoder/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
output_encoder/MatMul?
%output_encoder/BiasAdd/ReadVariableOpReadVariableOp.output_encoder_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02'
%output_encoder/BiasAdd/ReadVariableOp?
output_encoder/BiasAddBiasAddoutput_encoder/MatMul:product:0-output_encoder/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
output_encoder/BiasAdd?
output_encoder/ReluReluoutput_encoder/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
output_encoder/Relu?
IdentityIdentity!output_encoder/Relu:activations:0&^encoder_layer1/BiasAdd/ReadVariableOp%^encoder_layer1/MatMul/ReadVariableOp&^encoder_layer2/BiasAdd/ReadVariableOp%^encoder_layer2/MatMul/ReadVariableOp(^encoder_layer3/batchnorm/ReadVariableOp*^encoder_layer3/batchnorm/ReadVariableOp_1*^encoder_layer3/batchnorm/ReadVariableOp_2,^encoder_layer3/batchnorm/mul/ReadVariableOp&^encoder_layer5/BiasAdd/ReadVariableOp%^encoder_layer5/MatMul/ReadVariableOp&^encoder_layer6/BiasAdd/ReadVariableOp%^encoder_layer6/MatMul/ReadVariableOp&^encoder_layer7/BiasAdd/ReadVariableOp%^encoder_layer7/MatMul/ReadVariableOp&^encoder_layer8/BiasAdd/ReadVariableOp%^encoder_layer8/MatMul/ReadVariableOp(^encoder_layer9/batchnorm/ReadVariableOp*^encoder_layer9/batchnorm/ReadVariableOp_1*^encoder_layer9/batchnorm/ReadVariableOp_2,^encoder_layer9/batchnorm/mul/ReadVariableOp&^output_encoder/BiasAdd/ReadVariableOp%^output_encoder/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2N
%encoder_layer1/BiasAdd/ReadVariableOp%encoder_layer1/BiasAdd/ReadVariableOp2L
$encoder_layer1/MatMul/ReadVariableOp$encoder_layer1/MatMul/ReadVariableOp2N
%encoder_layer2/BiasAdd/ReadVariableOp%encoder_layer2/BiasAdd/ReadVariableOp2L
$encoder_layer2/MatMul/ReadVariableOp$encoder_layer2/MatMul/ReadVariableOp2R
'encoder_layer3/batchnorm/ReadVariableOp'encoder_layer3/batchnorm/ReadVariableOp2V
)encoder_layer3/batchnorm/ReadVariableOp_1)encoder_layer3/batchnorm/ReadVariableOp_12V
)encoder_layer3/batchnorm/ReadVariableOp_2)encoder_layer3/batchnorm/ReadVariableOp_22Z
+encoder_layer3/batchnorm/mul/ReadVariableOp+encoder_layer3/batchnorm/mul/ReadVariableOp2N
%encoder_layer5/BiasAdd/ReadVariableOp%encoder_layer5/BiasAdd/ReadVariableOp2L
$encoder_layer5/MatMul/ReadVariableOp$encoder_layer5/MatMul/ReadVariableOp2N
%encoder_layer6/BiasAdd/ReadVariableOp%encoder_layer6/BiasAdd/ReadVariableOp2L
$encoder_layer6/MatMul/ReadVariableOp$encoder_layer6/MatMul/ReadVariableOp2N
%encoder_layer7/BiasAdd/ReadVariableOp%encoder_layer7/BiasAdd/ReadVariableOp2L
$encoder_layer7/MatMul/ReadVariableOp$encoder_layer7/MatMul/ReadVariableOp2N
%encoder_layer8/BiasAdd/ReadVariableOp%encoder_layer8/BiasAdd/ReadVariableOp2L
$encoder_layer8/MatMul/ReadVariableOp$encoder_layer8/MatMul/ReadVariableOp2R
'encoder_layer9/batchnorm/ReadVariableOp'encoder_layer9/batchnorm/ReadVariableOp2V
)encoder_layer9/batchnorm/ReadVariableOp_1)encoder_layer9/batchnorm/ReadVariableOp_12V
)encoder_layer9/batchnorm/ReadVariableOp_2)encoder_layer9/batchnorm/ReadVariableOp_22Z
+encoder_layer9/batchnorm/mul/ReadVariableOp+encoder_layer9/batchnorm/mul/ReadVariableOp2N
%output_encoder/BiasAdd/ReadVariableOp%output_encoder/BiasAdd/ReadVariableOp2L
$output_encoder/MatMul/ReadVariableOp$output_encoder/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
K__inference_encoder_layer8_layer_call_and_return_conditional_losses_8023600

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?<
?
D__inference_Encoder_layer_call_and_return_conditional_losses_8020336

inputs
encoder_layer1_8020280
encoder_layer1_8020282
encoder_layer2_8020285
encoder_layer2_8020287
encoder_layer3_8020290
encoder_layer3_8020292
encoder_layer3_8020294
encoder_layer3_8020296
encoder_layer5_8020300
encoder_layer5_8020302
encoder_layer6_8020305
encoder_layer6_8020307
encoder_layer7_8020310
encoder_layer7_8020312
encoder_layer8_8020315
encoder_layer8_8020317
encoder_layer9_8020320
encoder_layer9_8020322
encoder_layer9_8020324
encoder_layer9_8020326
output_encoder_8020330
output_encoder_8020332
identity??&encoder_layer1/StatefulPartitionedCall?&encoder_layer2/StatefulPartitionedCall?&encoder_layer3/StatefulPartitionedCall?&encoder_layer5/StatefulPartitionedCall?&encoder_layer6/StatefulPartitionedCall?&encoder_layer7/StatefulPartitionedCall?&encoder_layer8/StatefulPartitionedCall?&encoder_layer9/StatefulPartitionedCall?&output_encoder/StatefulPartitionedCall?
&encoder_layer1/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_layer1_8020280encoder_layer1_8020282*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_80197982(
&encoder_layer1/StatefulPartitionedCall?
&encoder_layer2/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer1/StatefulPartitionedCall:output:0encoder_layer2_8020285encoder_layer2_8020287*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer2_layer_call_and_return_conditional_losses_80198252(
&encoder_layer2/StatefulPartitionedCall?
&encoder_layer3/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer2/StatefulPartitionedCall:output:0encoder_layer3_8020290encoder_layer3_8020292encoder_layer3_8020294encoder_layer3_8020296*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer3_layer_call_and_return_conditional_losses_80196322(
&encoder_layer3/StatefulPartitionedCall?
encoder_layer4/PartitionedCallPartitionedCall/encoder_layer3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer4_layer_call_and_return_conditional_losses_80198932 
encoder_layer4/PartitionedCall?
&encoder_layer5/StatefulPartitionedCallStatefulPartitionedCall'encoder_layer4/PartitionedCall:output:0encoder_layer5_8020300encoder_layer5_8020302*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer5_layer_call_and_return_conditional_losses_80199172(
&encoder_layer5/StatefulPartitionedCall?
&encoder_layer6/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer5/StatefulPartitionedCall:output:0encoder_layer6_8020305encoder_layer6_8020307*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer6_layer_call_and_return_conditional_losses_80199442(
&encoder_layer6/StatefulPartitionedCall?
&encoder_layer7/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer6/StatefulPartitionedCall:output:0encoder_layer7_8020310encoder_layer7_8020312*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer7_layer_call_and_return_conditional_losses_80199712(
&encoder_layer7/StatefulPartitionedCall?
&encoder_layer8/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer7/StatefulPartitionedCall:output:0encoder_layer8_8020315encoder_layer8_8020317*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer8_layer_call_and_return_conditional_losses_80199982(
&encoder_layer8/StatefulPartitionedCall?
&encoder_layer9/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer8/StatefulPartitionedCall:output:0encoder_layer9_8020320encoder_layer9_8020322encoder_layer9_8020324encoder_layer9_8020326*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer9_layer_call_and_return_conditional_losses_80197722(
&encoder_layer9/StatefulPartitionedCall?
encoder_layer10/PartitionedCallPartitionedCall/encoder_layer9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_encoder_layer10_layer_call_and_return_conditional_losses_80200662!
encoder_layer10/PartitionedCall?
&output_encoder/StatefulPartitionedCallStatefulPartitionedCall(encoder_layer10/PartitionedCall:output:0output_encoder_8020330output_encoder_8020332*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_output_encoder_layer_call_and_return_conditional_losses_80200902(
&output_encoder/StatefulPartitionedCall?
IdentityIdentity/output_encoder/StatefulPartitionedCall:output:0'^encoder_layer1/StatefulPartitionedCall'^encoder_layer2/StatefulPartitionedCall'^encoder_layer3/StatefulPartitionedCall'^encoder_layer5/StatefulPartitionedCall'^encoder_layer6/StatefulPartitionedCall'^encoder_layer7/StatefulPartitionedCall'^encoder_layer8/StatefulPartitionedCall'^encoder_layer9/StatefulPartitionedCall'^output_encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::2P
&encoder_layer1/StatefulPartitionedCall&encoder_layer1/StatefulPartitionedCall2P
&encoder_layer2/StatefulPartitionedCall&encoder_layer2/StatefulPartitionedCall2P
&encoder_layer3/StatefulPartitionedCall&encoder_layer3/StatefulPartitionedCall2P
&encoder_layer5/StatefulPartitionedCall&encoder_layer5/StatefulPartitionedCall2P
&encoder_layer6/StatefulPartitionedCall&encoder_layer6/StatefulPartitionedCall2P
&encoder_layer7/StatefulPartitionedCall&encoder_layer7/StatefulPartitionedCall2P
&encoder_layer8/StatefulPartitionedCall&encoder_layer8/StatefulPartitionedCall2P
&encoder_layer9/StatefulPartitionedCall&encoder_layer9/StatefulPartitionedCall2P
&output_encoder/StatefulPartitionedCall&output_encoder/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
K__inference_decoder_layer7_layer_call_and_return_conditional_losses_8023938

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
I__inference_output_layer_layer_call_and_return_conditional_losses_8024087

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
0__inference_decoder_layer2_layer_call_fn_8023778

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer2_layer_call_and_return_conditional_losses_80207052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
K__inference_encoder_layer5_layer_call_and_return_conditional_losses_8019917

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?<
?
D__inference_Decoder_layer_call_and_return_conditional_losses_8021046
input_decoder
decoder_layer1_8020990
decoder_layer1_8020992
decoder_layer2_8020995
decoder_layer2_8020997
decoder_layer3_8021000
decoder_layer3_8021002
decoder_layer3_8021004
decoder_layer3_8021006
decoder_layer5_8021010
decoder_layer5_8021012
decoder_layer6_8021015
decoder_layer6_8021017
decoder_layer7_8021020
decoder_layer7_8021022
decoder_layer8_8021025
decoder_layer8_8021027
decoder_layer9_8021030
decoder_layer9_8021032
decoder_layer9_8021034
decoder_layer9_8021036
output_layer_8021040
output_layer_8021042
identity??&decoder_layer1/StatefulPartitionedCall?&decoder_layer2/StatefulPartitionedCall?&decoder_layer3/StatefulPartitionedCall?&decoder_layer5/StatefulPartitionedCall?&decoder_layer6/StatefulPartitionedCall?&decoder_layer7/StatefulPartitionedCall?&decoder_layer8/StatefulPartitionedCall?&decoder_layer9/StatefulPartitionedCall?$output_layer/StatefulPartitionedCall?
&decoder_layer1/StatefulPartitionedCallStatefulPartitionedCallinput_decoderdecoder_layer1_8020990decoder_layer1_8020992*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer1_layer_call_and_return_conditional_losses_80206782(
&decoder_layer1/StatefulPartitionedCall?
&decoder_layer2/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer1/StatefulPartitionedCall:output:0decoder_layer2_8020995decoder_layer2_8020997*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer2_layer_call_and_return_conditional_losses_80207052(
&decoder_layer2/StatefulPartitionedCall?
&decoder_layer3/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer2/StatefulPartitionedCall:output:0decoder_layer3_8021000decoder_layer3_8021002decoder_layer3_8021004decoder_layer3_8021006*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer3_layer_call_and_return_conditional_losses_80205122(
&decoder_layer3/StatefulPartitionedCall?
decoder_layer4/PartitionedCallPartitionedCall/decoder_layer3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer4_layer_call_and_return_conditional_losses_80207732 
decoder_layer4/PartitionedCall?
&decoder_layer5/StatefulPartitionedCallStatefulPartitionedCall'decoder_layer4/PartitionedCall:output:0decoder_layer5_8021010decoder_layer5_8021012*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer5_layer_call_and_return_conditional_losses_80207972(
&decoder_layer5/StatefulPartitionedCall?
&decoder_layer6/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer5/StatefulPartitionedCall:output:0decoder_layer6_8021015decoder_layer6_8021017*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer6_layer_call_and_return_conditional_losses_80208242(
&decoder_layer6/StatefulPartitionedCall?
&decoder_layer7/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer6/StatefulPartitionedCall:output:0decoder_layer7_8021020decoder_layer7_8021022*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer7_layer_call_and_return_conditional_losses_80208512(
&decoder_layer7/StatefulPartitionedCall?
&decoder_layer8/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer7/StatefulPartitionedCall:output:0decoder_layer8_8021025decoder_layer8_8021027*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer8_layer_call_and_return_conditional_losses_80208782(
&decoder_layer8/StatefulPartitionedCall?
&decoder_layer9/StatefulPartitionedCallStatefulPartitionedCall/decoder_layer8/StatefulPartitionedCall:output:0decoder_layer9_8021030decoder_layer9_8021032decoder_layer9_8021034decoder_layer9_8021036*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer9_layer_call_and_return_conditional_losses_80206522(
&decoder_layer9/StatefulPartitionedCall?
decoder_layer10/PartitionedCallPartitionedCall/decoder_layer9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_decoder_layer10_layer_call_and_return_conditional_losses_80209462!
decoder_layer10/PartitionedCall?
$output_layer/StatefulPartitionedCallStatefulPartitionedCall(decoder_layer10/PartitionedCall:output:0output_layer_8021040output_layer_8021042*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_80209702&
$output_layer/StatefulPartitionedCall?
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0'^decoder_layer1/StatefulPartitionedCall'^decoder_layer2/StatefulPartitionedCall'^decoder_layer3/StatefulPartitionedCall'^decoder_layer5/StatefulPartitionedCall'^decoder_layer6/StatefulPartitionedCall'^decoder_layer7/StatefulPartitionedCall'^decoder_layer8/StatefulPartitionedCall'^decoder_layer9/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????
::::::::::::::::::::::2P
&decoder_layer1/StatefulPartitionedCall&decoder_layer1/StatefulPartitionedCall2P
&decoder_layer2/StatefulPartitionedCall&decoder_layer2/StatefulPartitionedCall2P
&decoder_layer3/StatefulPartitionedCall&decoder_layer3/StatefulPartitionedCall2P
&decoder_layer5/StatefulPartitionedCall&decoder_layer5/StatefulPartitionedCall2P
&decoder_layer6/StatefulPartitionedCall&decoder_layer6/StatefulPartitionedCall2P
&decoder_layer7/StatefulPartitionedCall&decoder_layer7/StatefulPartitionedCall2P
&decoder_layer8/StatefulPartitionedCall&decoder_layer8/StatefulPartitionedCall2P
&decoder_layer9/StatefulPartitionedCall&decoder_layer9/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:V R
'
_output_shapes
:?????????

'
_user_specified_nameinput_decoder
?
?
D__inference_Decoder_layer_call_and_return_conditional_losses_8023282

inputs1
-decoder_layer1_matmul_readvariableop_resource2
.decoder_layer1_biasadd_readvariableop_resource1
-decoder_layer2_matmul_readvariableop_resource2
.decoder_layer2_biasadd_readvariableop_resource4
0decoder_layer3_batchnorm_readvariableop_resource8
4decoder_layer3_batchnorm_mul_readvariableop_resource6
2decoder_layer3_batchnorm_readvariableop_1_resource6
2decoder_layer3_batchnorm_readvariableop_2_resource1
-decoder_layer5_matmul_readvariableop_resource2
.decoder_layer5_biasadd_readvariableop_resource1
-decoder_layer6_matmul_readvariableop_resource2
.decoder_layer6_biasadd_readvariableop_resource1
-decoder_layer7_matmul_readvariableop_resource2
.decoder_layer7_biasadd_readvariableop_resource1
-decoder_layer8_matmul_readvariableop_resource2
.decoder_layer8_biasadd_readvariableop_resource4
0decoder_layer9_batchnorm_readvariableop_resource8
4decoder_layer9_batchnorm_mul_readvariableop_resource6
2decoder_layer9_batchnorm_readvariableop_1_resource6
2decoder_layer9_batchnorm_readvariableop_2_resource/
+output_layer_matmul_readvariableop_resource0
,output_layer_biasadd_readvariableop_resource
identity??%decoder_layer1/BiasAdd/ReadVariableOp?$decoder_layer1/MatMul/ReadVariableOp?%decoder_layer2/BiasAdd/ReadVariableOp?$decoder_layer2/MatMul/ReadVariableOp?'decoder_layer3/batchnorm/ReadVariableOp?)decoder_layer3/batchnorm/ReadVariableOp_1?)decoder_layer3/batchnorm/ReadVariableOp_2?+decoder_layer3/batchnorm/mul/ReadVariableOp?%decoder_layer5/BiasAdd/ReadVariableOp?$decoder_layer5/MatMul/ReadVariableOp?%decoder_layer6/BiasAdd/ReadVariableOp?$decoder_layer6/MatMul/ReadVariableOp?%decoder_layer7/BiasAdd/ReadVariableOp?$decoder_layer7/MatMul/ReadVariableOp?%decoder_layer8/BiasAdd/ReadVariableOp?$decoder_layer8/MatMul/ReadVariableOp?'decoder_layer9/batchnorm/ReadVariableOp?)decoder_layer9/batchnorm/ReadVariableOp_1?)decoder_layer9/batchnorm/ReadVariableOp_2?+decoder_layer9/batchnorm/mul/ReadVariableOp?#output_layer/BiasAdd/ReadVariableOp?"output_layer/MatMul/ReadVariableOp?
$decoder_layer1/MatMul/ReadVariableOpReadVariableOp-decoder_layer1_matmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02&
$decoder_layer1/MatMul/ReadVariableOp?
decoder_layer1/MatMulMatMulinputs,decoder_layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer1/MatMul?
%decoder_layer1/BiasAdd/ReadVariableOpReadVariableOp.decoder_layer1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%decoder_layer1/BiasAdd/ReadVariableOp?
decoder_layer1/BiasAddBiasAdddecoder_layer1/MatMul:product:0-decoder_layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer1/BiasAdd?
decoder_layer1/ReluReludecoder_layer1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
decoder_layer1/Relu?
$decoder_layer2/MatMul/ReadVariableOpReadVariableOp-decoder_layer2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$decoder_layer2/MatMul/ReadVariableOp?
decoder_layer2/MatMulMatMul!decoder_layer1/Relu:activations:0,decoder_layer2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer2/MatMul?
%decoder_layer2/BiasAdd/ReadVariableOpReadVariableOp.decoder_layer2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%decoder_layer2/BiasAdd/ReadVariableOp?
decoder_layer2/BiasAddBiasAdddecoder_layer2/MatMul:product:0-decoder_layer2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer2/BiasAdd?
decoder_layer2/ReluReludecoder_layer2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
decoder_layer2/Relu?
'decoder_layer3/batchnorm/ReadVariableOpReadVariableOp0decoder_layer3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'decoder_layer3/batchnorm/ReadVariableOp?
decoder_layer3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2 
decoder_layer3/batchnorm/add/y?
decoder_layer3/batchnorm/addAddV2/decoder_layer3/batchnorm/ReadVariableOp:value:0'decoder_layer3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
decoder_layer3/batchnorm/add?
decoder_layer3/batchnorm/RsqrtRsqrt decoder_layer3/batchnorm/add:z:0*
T0*
_output_shapes	
:?2 
decoder_layer3/batchnorm/Rsqrt?
+decoder_layer3/batchnorm/mul/ReadVariableOpReadVariableOp4decoder_layer3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+decoder_layer3/batchnorm/mul/ReadVariableOp?
decoder_layer3/batchnorm/mulMul"decoder_layer3/batchnorm/Rsqrt:y:03decoder_layer3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
decoder_layer3/batchnorm/mul?
decoder_layer3/batchnorm/mul_1Mul!decoder_layer2/Relu:activations:0 decoder_layer3/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2 
decoder_layer3/batchnorm/mul_1?
)decoder_layer3/batchnorm/ReadVariableOp_1ReadVariableOp2decoder_layer3_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02+
)decoder_layer3/batchnorm/ReadVariableOp_1?
decoder_layer3/batchnorm/mul_2Mul1decoder_layer3/batchnorm/ReadVariableOp_1:value:0 decoder_layer3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2 
decoder_layer3/batchnorm/mul_2?
)decoder_layer3/batchnorm/ReadVariableOp_2ReadVariableOp2decoder_layer3_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02+
)decoder_layer3/batchnorm/ReadVariableOp_2?
decoder_layer3/batchnorm/subSub1decoder_layer3/batchnorm/ReadVariableOp_2:value:0"decoder_layer3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
decoder_layer3/batchnorm/sub?
decoder_layer3/batchnorm/add_1AddV2"decoder_layer3/batchnorm/mul_1:z:0 decoder_layer3/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2 
decoder_layer3/batchnorm/add_1?
decoder_layer4/IdentityIdentity"decoder_layer3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
decoder_layer4/Identity?
$decoder_layer5/MatMul/ReadVariableOpReadVariableOp-decoder_layer5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$decoder_layer5/MatMul/ReadVariableOp?
decoder_layer5/MatMulMatMul decoder_layer4/Identity:output:0,decoder_layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer5/MatMul?
%decoder_layer5/BiasAdd/ReadVariableOpReadVariableOp.decoder_layer5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%decoder_layer5/BiasAdd/ReadVariableOp?
decoder_layer5/BiasAddBiasAdddecoder_layer5/MatMul:product:0-decoder_layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer5/BiasAdd?
decoder_layer5/ReluReludecoder_layer5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
decoder_layer5/Relu?
$decoder_layer6/MatMul/ReadVariableOpReadVariableOp-decoder_layer6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$decoder_layer6/MatMul/ReadVariableOp?
decoder_layer6/MatMulMatMul!decoder_layer5/Relu:activations:0,decoder_layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer6/MatMul?
%decoder_layer6/BiasAdd/ReadVariableOpReadVariableOp.decoder_layer6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%decoder_layer6/BiasAdd/ReadVariableOp?
decoder_layer6/BiasAddBiasAdddecoder_layer6/MatMul:product:0-decoder_layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer6/BiasAdd?
decoder_layer6/ReluReludecoder_layer6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
decoder_layer6/Relu?
$decoder_layer7/MatMul/ReadVariableOpReadVariableOp-decoder_layer7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$decoder_layer7/MatMul/ReadVariableOp?
decoder_layer7/MatMulMatMul!decoder_layer6/Relu:activations:0,decoder_layer7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer7/MatMul?
%decoder_layer7/BiasAdd/ReadVariableOpReadVariableOp.decoder_layer7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%decoder_layer7/BiasAdd/ReadVariableOp?
decoder_layer7/BiasAddBiasAdddecoder_layer7/MatMul:product:0-decoder_layer7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
decoder_layer7/BiasAdd?
decoder_layer7/ReluReludecoder_layer7/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
decoder_layer7/Relu?
$decoder_layer8/MatMul/ReadVariableOpReadVariableOp-decoder_layer8_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02&
$decoder_layer8/MatMul/ReadVariableOp?
decoder_layer8/MatMulMatMul!decoder_layer7/Relu:activations:0,decoder_layer8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
decoder_layer8/MatMul?
%decoder_layer8/BiasAdd/ReadVariableOpReadVariableOp.decoder_layer8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%decoder_layer8/BiasAdd/ReadVariableOp?
decoder_layer8/BiasAddBiasAdddecoder_layer8/MatMul:product:0-decoder_layer8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
decoder_layer8/BiasAdd?
decoder_layer8/ReluReludecoder_layer8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
decoder_layer8/Relu?
'decoder_layer9/batchnorm/ReadVariableOpReadVariableOp0decoder_layer9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02)
'decoder_layer9/batchnorm/ReadVariableOp?
decoder_layer9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2 
decoder_layer9/batchnorm/add/y?
decoder_layer9/batchnorm/addAddV2/decoder_layer9/batchnorm/ReadVariableOp:value:0'decoder_layer9/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
decoder_layer9/batchnorm/add?
decoder_layer9/batchnorm/RsqrtRsqrt decoder_layer9/batchnorm/add:z:0*
T0*
_output_shapes
:@2 
decoder_layer9/batchnorm/Rsqrt?
+decoder_layer9/batchnorm/mul/ReadVariableOpReadVariableOp4decoder_layer9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02-
+decoder_layer9/batchnorm/mul/ReadVariableOp?
decoder_layer9/batchnorm/mulMul"decoder_layer9/batchnorm/Rsqrt:y:03decoder_layer9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
decoder_layer9/batchnorm/mul?
decoder_layer9/batchnorm/mul_1Mul!decoder_layer8/Relu:activations:0 decoder_layer9/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2 
decoder_layer9/batchnorm/mul_1?
)decoder_layer9/batchnorm/ReadVariableOp_1ReadVariableOp2decoder_layer9_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02+
)decoder_layer9/batchnorm/ReadVariableOp_1?
decoder_layer9/batchnorm/mul_2Mul1decoder_layer9/batchnorm/ReadVariableOp_1:value:0 decoder_layer9/batchnorm/mul:z:0*
T0*
_output_shapes
:@2 
decoder_layer9/batchnorm/mul_2?
)decoder_layer9/batchnorm/ReadVariableOp_2ReadVariableOp2decoder_layer9_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02+
)decoder_layer9/batchnorm/ReadVariableOp_2?
decoder_layer9/batchnorm/subSub1decoder_layer9/batchnorm/ReadVariableOp_2:value:0"decoder_layer9/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
decoder_layer9/batchnorm/sub?
decoder_layer9/batchnorm/add_1AddV2"decoder_layer9/batchnorm/mul_1:z:0 decoder_layer9/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2 
decoder_layer9/batchnorm/add_1?
decoder_layer10/IdentityIdentity"decoder_layer9/batchnorm/add_1:z:0*
T0*'
_output_shapes
:?????????@2
decoder_layer10/Identity?
"output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02$
"output_layer/MatMul/ReadVariableOp?
output_layer/MatMulMatMul!decoder_layer10/Identity:output:0*output_layer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
output_layer/MatMul?
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#output_layer/BiasAdd/ReadVariableOp?
output_layer/BiasAddBiasAddoutput_layer/MatMul:product:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
output_layer/BiasAdd?
output_layer/SigmoidSigmoidoutput_layer/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
output_layer/Sigmoid?
IdentityIdentityoutput_layer/Sigmoid:y:0&^decoder_layer1/BiasAdd/ReadVariableOp%^decoder_layer1/MatMul/ReadVariableOp&^decoder_layer2/BiasAdd/ReadVariableOp%^decoder_layer2/MatMul/ReadVariableOp(^decoder_layer3/batchnorm/ReadVariableOp*^decoder_layer3/batchnorm/ReadVariableOp_1*^decoder_layer3/batchnorm/ReadVariableOp_2,^decoder_layer3/batchnorm/mul/ReadVariableOp&^decoder_layer5/BiasAdd/ReadVariableOp%^decoder_layer5/MatMul/ReadVariableOp&^decoder_layer6/BiasAdd/ReadVariableOp%^decoder_layer6/MatMul/ReadVariableOp&^decoder_layer7/BiasAdd/ReadVariableOp%^decoder_layer7/MatMul/ReadVariableOp&^decoder_layer8/BiasAdd/ReadVariableOp%^decoder_layer8/MatMul/ReadVariableOp(^decoder_layer9/batchnorm/ReadVariableOp*^decoder_layer9/batchnorm/ReadVariableOp_1*^decoder_layer9/batchnorm/ReadVariableOp_2,^decoder_layer9/batchnorm/mul/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp#^output_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????
::::::::::::::::::::::2N
%decoder_layer1/BiasAdd/ReadVariableOp%decoder_layer1/BiasAdd/ReadVariableOp2L
$decoder_layer1/MatMul/ReadVariableOp$decoder_layer1/MatMul/ReadVariableOp2N
%decoder_layer2/BiasAdd/ReadVariableOp%decoder_layer2/BiasAdd/ReadVariableOp2L
$decoder_layer2/MatMul/ReadVariableOp$decoder_layer2/MatMul/ReadVariableOp2R
'decoder_layer3/batchnorm/ReadVariableOp'decoder_layer3/batchnorm/ReadVariableOp2V
)decoder_layer3/batchnorm/ReadVariableOp_1)decoder_layer3/batchnorm/ReadVariableOp_12V
)decoder_layer3/batchnorm/ReadVariableOp_2)decoder_layer3/batchnorm/ReadVariableOp_22Z
+decoder_layer3/batchnorm/mul/ReadVariableOp+decoder_layer3/batchnorm/mul/ReadVariableOp2N
%decoder_layer5/BiasAdd/ReadVariableOp%decoder_layer5/BiasAdd/ReadVariableOp2L
$decoder_layer5/MatMul/ReadVariableOp$decoder_layer5/MatMul/ReadVariableOp2N
%decoder_layer6/BiasAdd/ReadVariableOp%decoder_layer6/BiasAdd/ReadVariableOp2L
$decoder_layer6/MatMul/ReadVariableOp$decoder_layer6/MatMul/ReadVariableOp2N
%decoder_layer7/BiasAdd/ReadVariableOp%decoder_layer7/BiasAdd/ReadVariableOp2L
$decoder_layer7/MatMul/ReadVariableOp$decoder_layer7/MatMul/ReadVariableOp2N
%decoder_layer8/BiasAdd/ReadVariableOp%decoder_layer8/BiasAdd/ReadVariableOp2L
$decoder_layer8/MatMul/ReadVariableOp$decoder_layer8/MatMul/ReadVariableOp2R
'decoder_layer9/batchnorm/ReadVariableOp'decoder_layer9/batchnorm/ReadVariableOp2V
)decoder_layer9/batchnorm/ReadVariableOp_1)decoder_layer9/batchnorm/ReadVariableOp_12V
)decoder_layer9/batchnorm/ReadVariableOp_2)decoder_layer9/batchnorm/ReadVariableOp_22Z
+decoder_layer9/batchnorm/mul/ReadVariableOp+decoder_layer9/batchnorm/mul/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2H
"output_layer/MatMul/ReadVariableOp"output_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
0__inference_decoder_layer1_layer_call_fn_8023758

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer1_layer_call_and_return_conditional_losses_80206782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
0__inference_decoder_layer9_layer_call_fn_8024036

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer9_layer_call_and_return_conditional_losses_80206192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
K__inference_encoder_layer9_layer_call_and_return_conditional_losses_8023665

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
K__inference_decoder_layer1_layer_call_and_return_conditional_losses_8020678

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
K__inference_decoder_layer9_layer_call_and_return_conditional_losses_8024023

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
0__inference_decoder_layer3_layer_call_fn_8023860

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_decoder_layer3_layer_call_and_return_conditional_losses_80205122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_8022126
input_autoencoder
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_autoencoderunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_80195032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:??????????
+
_user_specified_nameinput_autoencoder
?
?
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_8021745

inputs
encoder_8021654
encoder_8021656
encoder_8021658
encoder_8021660
encoder_8021662
encoder_8021664
encoder_8021666
encoder_8021668
encoder_8021670
encoder_8021672
encoder_8021674
encoder_8021676
encoder_8021678
encoder_8021680
encoder_8021682
encoder_8021684
encoder_8021686
encoder_8021688
encoder_8021690
encoder_8021692
encoder_8021694
encoder_8021696
decoder_8021699
decoder_8021701
decoder_8021703
decoder_8021705
decoder_8021707
decoder_8021709
decoder_8021711
decoder_8021713
decoder_8021715
decoder_8021717
decoder_8021719
decoder_8021721
decoder_8021723
decoder_8021725
decoder_8021727
decoder_8021729
decoder_8021731
decoder_8021733
decoder_8021735
decoder_8021737
decoder_8021739
decoder_8021741
identity??Decoder/StatefulPartitionedCall?Encoder/StatefulPartitionedCall?
Encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_8021654encoder_8021656encoder_8021658encoder_8021660encoder_8021662encoder_8021664encoder_8021666encoder_8021668encoder_8021670encoder_8021672encoder_8021674encoder_8021676encoder_8021678encoder_8021680encoder_8021682encoder_8021684encoder_8021686encoder_8021688encoder_8021690encoder_8021692encoder_8021694encoder_8021696*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_80202282!
Encoder/StatefulPartitionedCall?
Decoder/StatefulPartitionedCallStatefulPartitionedCall(Encoder/StatefulPartitionedCall:output:0decoder_8021699decoder_8021701decoder_8021703decoder_8021705decoder_8021707decoder_8021709decoder_8021711decoder_8021713decoder_8021715decoder_8021717decoder_8021719decoder_8021721decoder_8021723decoder_8021725decoder_8021727decoder_8021729decoder_8021731decoder_8021733decoder_8021735decoder_8021737decoder_8021739decoder_8021741*"
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_80211082!
Decoder/StatefulPartitionedCall?
IdentityIdentity(Decoder/StatefulPartitionedCall:output:0 ^Decoder/StatefulPartitionedCall ^Encoder/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????::::::::::::::::::::::::::::::::::::::::::::2B
Decoder/StatefulPartitionedCallDecoder/StatefulPartitionedCall2B
Encoder/StatefulPartitionedCallEncoder/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
K__inference_output_encoder_layer_call_and_return_conditional_losses_8020090

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_Encoder_layer_call_fn_8020383
input_encoder
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_encoderunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_80203362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*
_input_shapesn
l:??????????::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
(
_output_shapes
:??????????
'
_user_specified_nameinput_encoder
?
?
)__inference_Decoder_layer_call_fn_8023331

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_80211082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????
::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
K__inference_encoder_layer3_layer_call_and_return_conditional_losses_8023476

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
0__inference_encoder_layer2_layer_call_fn_8023420

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer2_layer_call_and_return_conditional_losses_80198252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?0
?
K__inference_decoder_layer9_layer_call_and_return_conditional_losses_8020619

inputs
assignmovingavg_8020594
assignmovingavg_1_8020600)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8020594*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_8020594*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8020594*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8020594*
_output_shapes
:@2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_8020594AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8020594*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8020600*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_8020600*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8020600*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8020600*
_output_shapes
:@2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_8020600AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8020600*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
i
K__inference_encoder_layer4_layer_call_and_return_conditional_losses_8023519

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?0
?
K__inference_encoder_layer3_layer_call_and_return_conditional_losses_8023456

inputs
assignmovingavg_8023431
assignmovingavg_1_8023437)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8023431*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_8023431*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8023431*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8023431*
_output_shapes
:@2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_8023431AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8023431*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8023437*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_8023437*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8023437*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8023437*
_output_shapes
:@2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_8023437AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8023437*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_8019798

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_output_encoder_layer_call_fn_8023738

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_output_encoder_layer_call_and_return_conditional_losses_80200902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
K__inference_encoder_layer8_layer_call_and_return_conditional_losses_8019998

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?0
?
K__inference_decoder_layer9_layer_call_and_return_conditional_losses_8024003

inputs
assignmovingavg_8023978
assignmovingavg_1_8023984)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8023978*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_8023978*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8023978*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8023978*
_output_shapes
:@2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_8023978AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8023978*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8023984*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_8023984*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8023984*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8023984*
_output_shapes
:@2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_8023984AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8023984*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?0
?
K__inference_encoder_layer9_layer_call_and_return_conditional_losses_8023645

inputs
assignmovingavg_8023620
assignmovingavg_1_8023626)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8023620*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_8023620*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8023620*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/8023620*
_output_shapes
:@2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_8023620AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/8023620*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8023626*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_8023626*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8023626*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/8023626*
_output_shapes
:@2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_8023626AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/8023626*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
K__inference_decoder_layer5_layer_call_and_return_conditional_losses_8023898

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
P
input_autoencoder;
#serving_default_input_autoencoder:0??????????<
Decoder1
StatefulPartitionedCall:0??????????tensorflow/serving/predict:??
??
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"??
_tf_keras_network??{"class_name": "Functional", "name": "AutoEncoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "AutoEncoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 186]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_autoencoder"}, "name": "input_autoencoder", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "Encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 186]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_encoder"}, "name": "input_encoder", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "encoder_layer1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer1", "inbound_nodes": [[["input_encoder", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer2", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer2", "inbound_nodes": [[["encoder_layer1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "encoder_layer3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "encoder_layer3", "inbound_nodes": [[["encoder_layer2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "encoder_layer4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "encoder_layer4", "inbound_nodes": [[["encoder_layer3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer5", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer5", "inbound_nodes": [[["encoder_layer4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer6", "inbound_nodes": [[["encoder_layer5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer7", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer7", "inbound_nodes": [[["encoder_layer6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer8", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer8", "inbound_nodes": [[["encoder_layer7", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "encoder_layer9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "encoder_layer9", "inbound_nodes": [[["encoder_layer8", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "encoder_layer10", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "encoder_layer10", "inbound_nodes": [[["encoder_layer9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output_encoder", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output_encoder", "inbound_nodes": [[["encoder_layer10", 0, 0, {}]]]}], "input_layers": [["input_encoder", 0, 0]], "output_layers": [["output_encoder", 0, 0]]}, "name": "Encoder", "inbound_nodes": [[["input_autoencoder", 0, 0, {}]]]}, {"class_name": "Functional", "config": {"name": "Decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_decoder"}, "name": "input_decoder", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "decoder_layer1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer1", "inbound_nodes": [[["input_decoder", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer2", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer2", "inbound_nodes": [[["decoder_layer1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "decoder_layer3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "decoder_layer3", "inbound_nodes": [[["decoder_layer2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "decoder_layer4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "decoder_layer4", "inbound_nodes": [[["decoder_layer3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer5", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer5", "inbound_nodes": [[["decoder_layer4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer6", "inbound_nodes": [[["decoder_layer5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer7", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer7", "inbound_nodes": [[["decoder_layer6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer8", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer8", "inbound_nodes": [[["decoder_layer7", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "decoder_layer9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "decoder_layer9", "inbound_nodes": [[["decoder_layer8", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "decoder_layer10", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "decoder_layer10", "inbound_nodes": [[["decoder_layer9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output_layer", "trainable": true, "dtype": "float32", "units": 186, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output_layer", "inbound_nodes": [[["decoder_layer10", 0, 0, {}]]]}], "input_layers": [["input_decoder", 0, 0]], "output_layers": [["output_layer", 0, 0]]}, "name": "Decoder", "inbound_nodes": [[["Encoder", 1, 0, {}]]]}], "input_layers": [["input_autoencoder", 0, 0]], "output_layers": [["Decoder", 1, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 186]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 186]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "AutoEncoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 186]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_autoencoder"}, "name": "input_autoencoder", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "Encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 186]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_encoder"}, "name": "input_encoder", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "encoder_layer1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer1", "inbound_nodes": [[["input_encoder", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer2", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer2", "inbound_nodes": [[["encoder_layer1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "encoder_layer3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "encoder_layer3", "inbound_nodes": [[["encoder_layer2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "encoder_layer4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "encoder_layer4", "inbound_nodes": [[["encoder_layer3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer5", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer5", "inbound_nodes": [[["encoder_layer4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer6", "inbound_nodes": [[["encoder_layer5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer7", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer7", "inbound_nodes": [[["encoder_layer6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer8", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer8", "inbound_nodes": [[["encoder_layer7", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "encoder_layer9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "encoder_layer9", "inbound_nodes": [[["encoder_layer8", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "encoder_layer10", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "encoder_layer10", "inbound_nodes": [[["encoder_layer9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output_encoder", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output_encoder", "inbound_nodes": [[["encoder_layer10", 0, 0, {}]]]}], "input_layers": [["input_encoder", 0, 0]], "output_layers": [["output_encoder", 0, 0]]}, "name": "Encoder", "inbound_nodes": [[["input_autoencoder", 0, 0, {}]]]}, {"class_name": "Functional", "config": {"name": "Decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_decoder"}, "name": "input_decoder", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "decoder_layer1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer1", "inbound_nodes": [[["input_decoder", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer2", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer2", "inbound_nodes": [[["decoder_layer1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "decoder_layer3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "decoder_layer3", "inbound_nodes": [[["decoder_layer2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "decoder_layer4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "decoder_layer4", "inbound_nodes": [[["decoder_layer3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer5", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer5", "inbound_nodes": [[["decoder_layer4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer6", "inbound_nodes": [[["decoder_layer5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer7", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer7", "inbound_nodes": [[["decoder_layer6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer8", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer8", "inbound_nodes": [[["decoder_layer7", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "decoder_layer9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "decoder_layer9", "inbound_nodes": [[["decoder_layer8", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "decoder_layer10", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "decoder_layer10", "inbound_nodes": [[["decoder_layer9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output_layer", "trainable": true, "dtype": "float32", "units": 186, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output_layer", "inbound_nodes": [[["decoder_layer10", 0, 0, {}]]]}], "input_layers": [["input_decoder", 0, 0]], "output_layers": [["output_layer", 0, 0]]}, "name": "Decoder", "inbound_nodes": [[["Encoder", 1, 0, {}]]]}], "input_layers": [["input_autoencoder", 0, 0]], "output_layers": [["Decoder", 1, 0]]}}, "training_config": {"loss": "mse", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999717180685e-10, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_autoencoder", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 186]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 186]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_autoencoder"}}
?a

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
layer_with_weights-6
layer-8
layer_with_weights-7
layer-9
layer-10
layer_with_weights-8
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?\
_tf_keras_network?\{"class_name": "Functional", "name": "Encoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "Encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 186]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_encoder"}, "name": "input_encoder", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "encoder_layer1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer1", "inbound_nodes": [[["input_encoder", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer2", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer2", "inbound_nodes": [[["encoder_layer1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "encoder_layer3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "encoder_layer3", "inbound_nodes": [[["encoder_layer2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "encoder_layer4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "encoder_layer4", "inbound_nodes": [[["encoder_layer3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer5", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer5", "inbound_nodes": [[["encoder_layer4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer6", "inbound_nodes": [[["encoder_layer5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer7", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer7", "inbound_nodes": [[["encoder_layer6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer8", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer8", "inbound_nodes": [[["encoder_layer7", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "encoder_layer9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "encoder_layer9", "inbound_nodes": [[["encoder_layer8", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "encoder_layer10", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "encoder_layer10", "inbound_nodes": [[["encoder_layer9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output_encoder", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output_encoder", "inbound_nodes": [[["encoder_layer10", 0, 0, {}]]]}], "input_layers": [["input_encoder", 0, 0]], "output_layers": [["output_encoder", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 186]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 186]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "Encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 186]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_encoder"}, "name": "input_encoder", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "encoder_layer1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer1", "inbound_nodes": [[["input_encoder", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer2", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer2", "inbound_nodes": [[["encoder_layer1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "encoder_layer3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "encoder_layer3", "inbound_nodes": [[["encoder_layer2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "encoder_layer4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "encoder_layer4", "inbound_nodes": [[["encoder_layer3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer5", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer5", "inbound_nodes": [[["encoder_layer4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer6", "inbound_nodes": [[["encoder_layer5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer7", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer7", "inbound_nodes": [[["encoder_layer6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "encoder_layer8", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder_layer8", "inbound_nodes": [[["encoder_layer7", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "encoder_layer9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "encoder_layer9", "inbound_nodes": [[["encoder_layer8", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "encoder_layer10", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "encoder_layer10", "inbound_nodes": [[["encoder_layer9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output_encoder", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output_encoder", "inbound_nodes": [[["encoder_layer10", 0, 0, {}]]]}], "input_layers": [["input_encoder", 0, 0]], "output_layers": [["output_encoder", 0, 0]]}}}
?a
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
 layer_with_weights-4
 layer-6
!layer_with_weights-5
!layer-7
"layer_with_weights-6
"layer-8
#layer_with_weights-7
#layer-9
$layer-10
%layer_with_weights-8
%layer-11
&	variables
'trainable_variables
(regularization_losses
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?\
_tf_keras_network?\{"class_name": "Functional", "name": "Decoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "Decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_decoder"}, "name": "input_decoder", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "decoder_layer1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer1", "inbound_nodes": [[["input_decoder", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer2", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer2", "inbound_nodes": [[["decoder_layer1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "decoder_layer3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "decoder_layer3", "inbound_nodes": [[["decoder_layer2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "decoder_layer4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "decoder_layer4", "inbound_nodes": [[["decoder_layer3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer5", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer5", "inbound_nodes": [[["decoder_layer4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer6", "inbound_nodes": [[["decoder_layer5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer7", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer7", "inbound_nodes": [[["decoder_layer6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer8", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer8", "inbound_nodes": [[["decoder_layer7", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "decoder_layer9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "decoder_layer9", "inbound_nodes": [[["decoder_layer8", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "decoder_layer10", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "decoder_layer10", "inbound_nodes": [[["decoder_layer9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output_layer", "trainable": true, "dtype": "float32", "units": 186, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output_layer", "inbound_nodes": [[["decoder_layer10", 0, 0, {}]]]}], "input_layers": [["input_decoder", 0, 0]], "output_layers": [["output_layer", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 10]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "Decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_decoder"}, "name": "input_decoder", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "decoder_layer1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer1", "inbound_nodes": [[["input_decoder", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer2", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer2", "inbound_nodes": [[["decoder_layer1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "decoder_layer3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "decoder_layer3", "inbound_nodes": [[["decoder_layer2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "decoder_layer4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "decoder_layer4", "inbound_nodes": [[["decoder_layer3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer5", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer5", "inbound_nodes": [[["decoder_layer4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer6", "inbound_nodes": [[["decoder_layer5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer7", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer7", "inbound_nodes": [[["decoder_layer6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "decoder_layer8", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "decoder_layer8", "inbound_nodes": [[["decoder_layer7", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "decoder_layer9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "decoder_layer9", "inbound_nodes": [[["decoder_layer8", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "decoder_layer10", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "decoder_layer10", "inbound_nodes": [[["decoder_layer9", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output_layer", "trainable": true, "dtype": "float32", "units": 186, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output_layer", "inbound_nodes": [[["decoder_layer10", 0, 0, {}]]]}], "input_layers": [["input_decoder", 0, 0]], "output_layers": [["output_layer", 0, 0]]}}}
?
*iter

+beta_1

,beta_2
	-decay
.learning_rate/m?0m?1m?2m?3m?4m?7m?8m?9m?:m?;m?<m?=m?>m??m?@m?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Mm?Nm?Om?Pm?Qm?Rm?Sm?Tm?Um?Vm?Ym?Zm?/v?0v?1v?2v?3v?4v?7v?8v?9v?:v?;v?<v?=v?>v??v?@v?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Mv?Nv?Ov?Pv?Qv?Rv?Sv?Tv?Uv?Vv?Yv?Zv?"
	optimizer
?
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19
C20
D21
E22
F23
G24
H25
I26
J27
K28
L29
M30
N31
O32
P33
Q34
R35
S36
T37
U38
V39
W40
X41
Y42
Z43"
trackable_list_wrapper
?
/0
01
12
23
34
45
76
87
98
:9
;10
<11
=12
>13
?14
@15
C16
D17
E18
F19
G20
H21
I22
J23
M24
N25
O26
P27
Q28
R29
S30
T31
U32
V33
Y34
Z35"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
[metrics
trainable_variables
\layer_regularization_losses

]layers
regularization_losses
^non_trainable_variables
_layer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_encoder", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 186]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 186]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_encoder"}}
?

/kernel
0bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "encoder_layer1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "encoder_layer1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 186}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 186]}}
?

1kernel
2bias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "encoder_layer2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "encoder_layer2", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?	
haxis
	3gamma
4beta
5moving_mean
6moving_variance
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "encoder_layer3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "encoder_layer3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "encoder_layer4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "encoder_layer4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?

7kernel
8bias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "encoder_layer5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "encoder_layer5", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?

9kernel
:bias
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "encoder_layer6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "encoder_layer6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?

;kernel
<bias
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "encoder_layer7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "encoder_layer7", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

=kernel
>bias
}	variables
~trainable_variables
regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "encoder_layer8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "encoder_layer8", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?	
	?axis
	?gamma
@beta
Amoving_mean
Bmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "encoder_layer9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "encoder_layer9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "encoder_layer10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "encoder_layer10", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?

Ckernel
Dbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "output_encoder", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output_encoder", "trainable": true, "dtype": "float32", "units": 10, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19
C20
D21"
trackable_list_wrapper
?
/0
01
12
23
34
45
76
87
98
:9
;10
<11
=12
>13
?14
@15
C16
D17"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
?metrics
trainable_variables
 ?layer_regularization_losses
?layers
regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_decoder", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_decoder"}}
?

Ekernel
Fbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "decoder_layer1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "decoder_layer1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
?

Gkernel
Hbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "decoder_layer2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "decoder_layer2", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?	
	?axis
	Igamma
Jbeta
Kmoving_mean
Lmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "decoder_layer3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "decoder_layer3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "decoder_layer4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "decoder_layer4", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?

Mkernel
Nbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "decoder_layer5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "decoder_layer5", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

Okernel
Pbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "decoder_layer6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "decoder_layer6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?

Qkernel
Rbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "decoder_layer7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "decoder_layer7", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

Skernel
Tbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "decoder_layer8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "decoder_layer8", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?	
	?axis
	Ugamma
Vbeta
Wmoving_mean
Xmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "decoder_layer9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "decoder_layer9", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "decoder_layer10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "decoder_layer10", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?

Ykernel
Zbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "output_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output_layer", "trainable": true, "dtype": "float32", "units": 186, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
E0
F1
G2
H3
I4
J5
K6
L7
M8
N9
O10
P11
Q12
R13
S14
T15
U16
V17
W18
X19
Y20
Z21"
trackable_list_wrapper
?
E0
F1
G2
H3
I4
J5
M6
N7
O8
P9
Q10
R11
S12
T13
U14
V15
Y16
Z17"
trackable_list_wrapper
 "
trackable_list_wrapper
?
&	variables
?metrics
'trainable_variables
 ?layer_regularization_losses
?layers
(regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
):'
??2encoder_layer1/kernel
": ?2encoder_layer1/bias
(:&	?@2encoder_layer2/kernel
!:@2encoder_layer2/bias
": @2encoder_layer3/gamma
!:@2encoder_layer3/beta
*:(@ (2encoder_layer3/moving_mean
.:,@ (2encoder_layer3/moving_variance
(:&	@?2encoder_layer5/kernel
": ?2encoder_layer5/bias
):'
??2encoder_layer6/kernel
": ?2encoder_layer6/bias
):'
??2encoder_layer7/kernel
": ?2encoder_layer7/bias
(:&	?@2encoder_layer8/kernel
!:@2encoder_layer8/bias
": @2encoder_layer9/gamma
!:@2encoder_layer9/beta
*:(@ (2encoder_layer9/moving_mean
.:,@ (2encoder_layer9/moving_variance
':%@
2output_encoder/kernel
!:
2output_encoder/bias
(:&	
?2decoder_layer1/kernel
": ?2decoder_layer1/bias
):'
??2decoder_layer2/kernel
": ?2decoder_layer2/bias
#:!?2decoder_layer3/gamma
": ?2decoder_layer3/beta
+:)? (2decoder_layer3/moving_mean
/:-? (2decoder_layer3/moving_variance
):'
??2decoder_layer5/kernel
": ?2decoder_layer5/bias
):'
??2decoder_layer6/kernel
": ?2decoder_layer6/bias
):'
??2decoder_layer7/kernel
": ?2decoder_layer7/bias
(:&	?@2decoder_layer8/kernel
!:@2decoder_layer8/bias
": @2decoder_layer9/gamma
!:@2decoder_layer9/beta
*:(@ (2decoder_layer9/moving_mean
.:,@ (2decoder_layer9/moving_variance
&:$	@?2output_layer/kernel
 :?2output_layer/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
X
50
61
A2
B3
K4
L5
W6
X7"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
?
`	variables
 ?layer_regularization_losses
?metrics
atrainable_variables
?layers
bregularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
d	variables
 ?layer_regularization_losses
?metrics
etrainable_variables
?layers
fregularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
30
41
52
63"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
?
i	variables
 ?layer_regularization_losses
?metrics
jtrainable_variables
?layers
kregularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
m	variables
 ?layer_regularization_losses
?metrics
ntrainable_variables
?layers
oregularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
q	variables
 ?layer_regularization_losses
?metrics
rtrainable_variables
?layers
sregularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
u	variables
 ?layer_regularization_losses
?metrics
vtrainable_variables
?layers
wregularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
y	variables
 ?layer_regularization_losses
?metrics
ztrainable_variables
?layers
{regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
}	variables
 ?layer_regularization_losses
?metrics
~trainable_variables
?layers
regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
?0
@1
A2
B3"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
v

0
1
2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
<
50
61
A2
B3"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
I0
J1
K2
L3"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
U0
V1
W2
X3"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
 ?layer_regularization_losses
?metrics
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
v
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11"
trackable_list_wrapper
<
K0
L1
W2
X3"
trackable_list_wrapper
 "
trackable_dict_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
.:,
??2Adam/encoder_layer1/kernel/m
':%?2Adam/encoder_layer1/bias/m
-:+	?@2Adam/encoder_layer2/kernel/m
&:$@2Adam/encoder_layer2/bias/m
':%@2Adam/encoder_layer3/gamma/m
&:$@2Adam/encoder_layer3/beta/m
-:+	@?2Adam/encoder_layer5/kernel/m
':%?2Adam/encoder_layer5/bias/m
.:,
??2Adam/encoder_layer6/kernel/m
':%?2Adam/encoder_layer6/bias/m
.:,
??2Adam/encoder_layer7/kernel/m
':%?2Adam/encoder_layer7/bias/m
-:+	?@2Adam/encoder_layer8/kernel/m
&:$@2Adam/encoder_layer8/bias/m
':%@2Adam/encoder_layer9/gamma/m
&:$@2Adam/encoder_layer9/beta/m
,:*@
2Adam/output_encoder/kernel/m
&:$
2Adam/output_encoder/bias/m
-:+	
?2Adam/decoder_layer1/kernel/m
':%?2Adam/decoder_layer1/bias/m
.:,
??2Adam/decoder_layer2/kernel/m
':%?2Adam/decoder_layer2/bias/m
(:&?2Adam/decoder_layer3/gamma/m
':%?2Adam/decoder_layer3/beta/m
.:,
??2Adam/decoder_layer5/kernel/m
':%?2Adam/decoder_layer5/bias/m
.:,
??2Adam/decoder_layer6/kernel/m
':%?2Adam/decoder_layer6/bias/m
.:,
??2Adam/decoder_layer7/kernel/m
':%?2Adam/decoder_layer7/bias/m
-:+	?@2Adam/decoder_layer8/kernel/m
&:$@2Adam/decoder_layer8/bias/m
':%@2Adam/decoder_layer9/gamma/m
&:$@2Adam/decoder_layer9/beta/m
+:)	@?2Adam/output_layer/kernel/m
%:#?2Adam/output_layer/bias/m
.:,
??2Adam/encoder_layer1/kernel/v
':%?2Adam/encoder_layer1/bias/v
-:+	?@2Adam/encoder_layer2/kernel/v
&:$@2Adam/encoder_layer2/bias/v
':%@2Adam/encoder_layer3/gamma/v
&:$@2Adam/encoder_layer3/beta/v
-:+	@?2Adam/encoder_layer5/kernel/v
':%?2Adam/encoder_layer5/bias/v
.:,
??2Adam/encoder_layer6/kernel/v
':%?2Adam/encoder_layer6/bias/v
.:,
??2Adam/encoder_layer7/kernel/v
':%?2Adam/encoder_layer7/bias/v
-:+	?@2Adam/encoder_layer8/kernel/v
&:$@2Adam/encoder_layer8/bias/v
':%@2Adam/encoder_layer9/gamma/v
&:$@2Adam/encoder_layer9/beta/v
,:*@
2Adam/output_encoder/kernel/v
&:$
2Adam/output_encoder/bias/v
-:+	
?2Adam/decoder_layer1/kernel/v
':%?2Adam/decoder_layer1/bias/v
.:,
??2Adam/decoder_layer2/kernel/v
':%?2Adam/decoder_layer2/bias/v
(:&?2Adam/decoder_layer3/gamma/v
':%?2Adam/decoder_layer3/beta/v
.:,
??2Adam/decoder_layer5/kernel/v
':%?2Adam/decoder_layer5/bias/v
.:,
??2Adam/decoder_layer6/kernel/v
':%?2Adam/decoder_layer6/bias/v
.:,
??2Adam/decoder_layer7/kernel/v
':%?2Adam/decoder_layer7/bias/v
-:+	?@2Adam/decoder_layer8/kernel/v
&:$@2Adam/decoder_layer8/bias/v
':%@2Adam/decoder_layer9/gamma/v
&:$@2Adam/decoder_layer9/beta/v
+:)	@?2Adam/output_layer/kernel/v
%:#?2Adam/output_layer/bias/v
?2?
"__inference__wrapped_model_8019503?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *1?.
,?)
input_autoencoder??????????
?2?
-__inference_AutoEncoder_layer_call_fn_8021836
-__inference_AutoEncoder_layer_call_fn_8022744
-__inference_AutoEncoder_layer_call_fn_8022651
-__inference_AutoEncoder_layer_call_fn_8022023?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_8021554
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_8022558
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_8022388
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_8021648?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_Encoder_layer_call_fn_8023062
)__inference_Encoder_layer_call_fn_8020275
)__inference_Encoder_layer_call_fn_8023013
)__inference_Encoder_layer_call_fn_8020383?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_Encoder_layer_call_and_return_conditional_losses_8022877
D__inference_Encoder_layer_call_and_return_conditional_losses_8022964
D__inference_Encoder_layer_call_and_return_conditional_losses_8020166
D__inference_Encoder_layer_call_and_return_conditional_losses_8020107?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_Decoder_layer_call_fn_8021263
)__inference_Decoder_layer_call_fn_8023380
)__inference_Decoder_layer_call_fn_8023331
)__inference_Decoder_layer_call_fn_8021155?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_Decoder_layer_call_and_return_conditional_losses_8023195
D__inference_Decoder_layer_call_and_return_conditional_losses_8021046
D__inference_Decoder_layer_call_and_return_conditional_losses_8023282
D__inference_Decoder_layer_call_and_return_conditional_losses_8020987?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
%__inference_signature_wrapper_8022126input_autoencoder"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_encoder_layer1_layer_call_fn_8023400?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_8023391?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_encoder_layer2_layer_call_fn_8023420?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_encoder_layer2_layer_call_and_return_conditional_losses_8023411?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_encoder_layer3_layer_call_fn_8023502
0__inference_encoder_layer3_layer_call_fn_8023489?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
K__inference_encoder_layer3_layer_call_and_return_conditional_losses_8023476
K__inference_encoder_layer3_layer_call_and_return_conditional_losses_8023456?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_encoder_layer4_layer_call_fn_8023529
0__inference_encoder_layer4_layer_call_fn_8023524?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
K__inference_encoder_layer4_layer_call_and_return_conditional_losses_8023514
K__inference_encoder_layer4_layer_call_and_return_conditional_losses_8023519?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_encoder_layer5_layer_call_fn_8023549?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_encoder_layer5_layer_call_and_return_conditional_losses_8023540?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_encoder_layer6_layer_call_fn_8023569?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_encoder_layer6_layer_call_and_return_conditional_losses_8023560?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_encoder_layer7_layer_call_fn_8023589?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_encoder_layer7_layer_call_and_return_conditional_losses_8023580?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_encoder_layer8_layer_call_fn_8023609?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_encoder_layer8_layer_call_and_return_conditional_losses_8023600?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_encoder_layer9_layer_call_fn_8023691
0__inference_encoder_layer9_layer_call_fn_8023678?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
K__inference_encoder_layer9_layer_call_and_return_conditional_losses_8023645
K__inference_encoder_layer9_layer_call_and_return_conditional_losses_8023665?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
1__inference_encoder_layer10_layer_call_fn_8023713
1__inference_encoder_layer10_layer_call_fn_8023718?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_encoder_layer10_layer_call_and_return_conditional_losses_8023703
L__inference_encoder_layer10_layer_call_and_return_conditional_losses_8023708?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_output_encoder_layer_call_fn_8023738?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_output_encoder_layer_call_and_return_conditional_losses_8023729?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_decoder_layer1_layer_call_fn_8023758?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_decoder_layer1_layer_call_and_return_conditional_losses_8023749?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_decoder_layer2_layer_call_fn_8023778?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_decoder_layer2_layer_call_and_return_conditional_losses_8023769?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_decoder_layer3_layer_call_fn_8023860
0__inference_decoder_layer3_layer_call_fn_8023847?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
K__inference_decoder_layer3_layer_call_and_return_conditional_losses_8023814
K__inference_decoder_layer3_layer_call_and_return_conditional_losses_8023834?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_decoder_layer4_layer_call_fn_8023887
0__inference_decoder_layer4_layer_call_fn_8023882?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
K__inference_decoder_layer4_layer_call_and_return_conditional_losses_8023872
K__inference_decoder_layer4_layer_call_and_return_conditional_losses_8023877?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_decoder_layer5_layer_call_fn_8023907?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_decoder_layer5_layer_call_and_return_conditional_losses_8023898?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_decoder_layer6_layer_call_fn_8023927?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_decoder_layer6_layer_call_and_return_conditional_losses_8023918?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_decoder_layer7_layer_call_fn_8023947?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_decoder_layer7_layer_call_and_return_conditional_losses_8023938?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_decoder_layer8_layer_call_fn_8023967?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_decoder_layer8_layer_call_and_return_conditional_losses_8023958?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_decoder_layer9_layer_call_fn_8024036
0__inference_decoder_layer9_layer_call_fn_8024049?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
K__inference_decoder_layer9_layer_call_and_return_conditional_losses_8024003
K__inference_decoder_layer9_layer_call_and_return_conditional_losses_8024023?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
1__inference_decoder_layer10_layer_call_fn_8024076
1__inference_decoder_layer10_layer_call_fn_8024071?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_decoder_layer10_layer_call_and_return_conditional_losses_8024066
L__inference_decoder_layer10_layer_call_and_return_conditional_losses_8024061?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_output_layer_layer_call_fn_8024096?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_output_layer_layer_call_and_return_conditional_losses_8024087?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_8021554?,/0125634789:;<=>AB?@CDEFGHKLIJMNOPQRSTWXUVYZC?@
9?6
,?)
input_autoencoder??????????
p

 
? "&?#
?
0??????????
? ?
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_8021648?,/0126354789:;<=>B?A@CDEFGHLIKJMNOPQRSTXUWVYZC?@
9?6
,?)
input_autoencoder??????????
p 

 
? "&?#
?
0??????????
? ?
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_8022388?,/0125634789:;<=>AB?@CDEFGHKLIJMNOPQRSTWXUVYZ8?5
.?+
!?
inputs??????????
p

 
? "&?#
?
0??????????
? ?
H__inference_AutoEncoder_layer_call_and_return_conditional_losses_8022558?,/0126354789:;<=>B?A@CDEFGHLIKJMNOPQRSTXUWVYZ8?5
.?+
!?
inputs??????????
p 

 
? "&?#
?
0??????????
? ?
-__inference_AutoEncoder_layer_call_fn_8021836?,/0125634789:;<=>AB?@CDEFGHKLIJMNOPQRSTWXUVYZC?@
9?6
,?)
input_autoencoder??????????
p

 
? "????????????
-__inference_AutoEncoder_layer_call_fn_8022023?,/0126354789:;<=>B?A@CDEFGHLIKJMNOPQRSTXUWVYZC?@
9?6
,?)
input_autoencoder??????????
p 

 
? "????????????
-__inference_AutoEncoder_layer_call_fn_8022651?,/0125634789:;<=>AB?@CDEFGHKLIJMNOPQRSTWXUVYZ8?5
.?+
!?
inputs??????????
p

 
? "????????????
-__inference_AutoEncoder_layer_call_fn_8022744?,/0126354789:;<=>B?A@CDEFGHLIKJMNOPQRSTXUWVYZ8?5
.?+
!?
inputs??????????
p 

 
? "????????????
D__inference_Decoder_layer_call_and_return_conditional_losses_8020987?EFGHKLIJMNOPQRSTWXUVYZ>?;
4?1
'?$
input_decoder?????????

p

 
? "&?#
?
0??????????
? ?
D__inference_Decoder_layer_call_and_return_conditional_losses_8021046?EFGHLIKJMNOPQRSTXUWVYZ>?;
4?1
'?$
input_decoder?????????

p 

 
? "&?#
?
0??????????
? ?
D__inference_Decoder_layer_call_and_return_conditional_losses_8023195yEFGHKLIJMNOPQRSTWXUVYZ7?4
-?*
 ?
inputs?????????

p

 
? "&?#
?
0??????????
? ?
D__inference_Decoder_layer_call_and_return_conditional_losses_8023282yEFGHLIKJMNOPQRSTXUWVYZ7?4
-?*
 ?
inputs?????????

p 

 
? "&?#
?
0??????????
? ?
)__inference_Decoder_layer_call_fn_8021155sEFGHKLIJMNOPQRSTWXUVYZ>?;
4?1
'?$
input_decoder?????????

p

 
? "????????????
)__inference_Decoder_layer_call_fn_8021263sEFGHLIKJMNOPQRSTXUWVYZ>?;
4?1
'?$
input_decoder?????????

p 

 
? "????????????
)__inference_Decoder_layer_call_fn_8023331lEFGHKLIJMNOPQRSTWXUVYZ7?4
-?*
 ?
inputs?????????

p

 
? "????????????
)__inference_Decoder_layer_call_fn_8023380lEFGHLIKJMNOPQRSTXUWVYZ7?4
-?*
 ?
inputs?????????

p 

 
? "????????????
D__inference_Encoder_layer_call_and_return_conditional_losses_8020107?/0125634789:;<=>AB?@CD??<
5?2
(?%
input_encoder??????????
p

 
? "%?"
?
0?????????

? ?
D__inference_Encoder_layer_call_and_return_conditional_losses_8020166?/0126354789:;<=>B?A@CD??<
5?2
(?%
input_encoder??????????
p 

 
? "%?"
?
0?????????

? ?
D__inference_Encoder_layer_call_and_return_conditional_losses_8022877y/0125634789:;<=>AB?@CD8?5
.?+
!?
inputs??????????
p

 
? "%?"
?
0?????????

? ?
D__inference_Encoder_layer_call_and_return_conditional_losses_8022964y/0126354789:;<=>B?A@CD8?5
.?+
!?
inputs??????????
p 

 
? "%?"
?
0?????????

? ?
)__inference_Encoder_layer_call_fn_8020275s/0125634789:;<=>AB?@CD??<
5?2
(?%
input_encoder??????????
p

 
? "??????????
?
)__inference_Encoder_layer_call_fn_8020383s/0126354789:;<=>B?A@CD??<
5?2
(?%
input_encoder??????????
p 

 
? "??????????
?
)__inference_Encoder_layer_call_fn_8023013l/0125634789:;<=>AB?@CD8?5
.?+
!?
inputs??????????
p

 
? "??????????
?
)__inference_Encoder_layer_call_fn_8023062l/0126354789:;<=>B?A@CD8?5
.?+
!?
inputs??????????
p 

 
? "??????????
?
"__inference__wrapped_model_8019503?,/0126354789:;<=>B?A@CDEFGHLIKJMNOPQRSTXUWVYZ;?8
1?.
,?)
input_autoencoder??????????
? "2?/
-
Decoder"?
Decoder???????????
L__inference_decoder_layer10_layer_call_and_return_conditional_losses_8024061\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
L__inference_decoder_layer10_layer_call_and_return_conditional_losses_8024066\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
1__inference_decoder_layer10_layer_call_fn_8024071O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
1__inference_decoder_layer10_layer_call_fn_8024076O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
K__inference_decoder_layer1_layer_call_and_return_conditional_losses_8023749]EF/?,
%?"
 ?
inputs?????????

? "&?#
?
0??????????
? ?
0__inference_decoder_layer1_layer_call_fn_8023758PEF/?,
%?"
 ?
inputs?????????

? "????????????
K__inference_decoder_layer2_layer_call_and_return_conditional_losses_8023769^GH0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_decoder_layer2_layer_call_fn_8023778QGH0?-
&?#
!?
inputs??????????
? "????????????
K__inference_decoder_layer3_layer_call_and_return_conditional_losses_8023814dKLIJ4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
K__inference_decoder_layer3_layer_call_and_return_conditional_losses_8023834dLIKJ4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
0__inference_decoder_layer3_layer_call_fn_8023847WKLIJ4?1
*?'
!?
inputs??????????
p
? "????????????
0__inference_decoder_layer3_layer_call_fn_8023860WLIKJ4?1
*?'
!?
inputs??????????
p 
? "????????????
K__inference_decoder_layer4_layer_call_and_return_conditional_losses_8023872^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
K__inference_decoder_layer4_layer_call_and_return_conditional_losses_8023877^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
0__inference_decoder_layer4_layer_call_fn_8023882Q4?1
*?'
!?
inputs??????????
p
? "????????????
0__inference_decoder_layer4_layer_call_fn_8023887Q4?1
*?'
!?
inputs??????????
p 
? "????????????
K__inference_decoder_layer5_layer_call_and_return_conditional_losses_8023898^MN0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_decoder_layer5_layer_call_fn_8023907QMN0?-
&?#
!?
inputs??????????
? "????????????
K__inference_decoder_layer6_layer_call_and_return_conditional_losses_8023918^OP0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_decoder_layer6_layer_call_fn_8023927QOP0?-
&?#
!?
inputs??????????
? "????????????
K__inference_decoder_layer7_layer_call_and_return_conditional_losses_8023938^QR0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_decoder_layer7_layer_call_fn_8023947QQR0?-
&?#
!?
inputs??????????
? "????????????
K__inference_decoder_layer8_layer_call_and_return_conditional_losses_8023958]ST0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ?
0__inference_decoder_layer8_layer_call_fn_8023967PST0?-
&?#
!?
inputs??????????
? "??????????@?
K__inference_decoder_layer9_layer_call_and_return_conditional_losses_8024003bWXUV3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
K__inference_decoder_layer9_layer_call_and_return_conditional_losses_8024023bXUWV3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
0__inference_decoder_layer9_layer_call_fn_8024036UWXUV3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
0__inference_decoder_layer9_layer_call_fn_8024049UXUWV3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
L__inference_encoder_layer10_layer_call_and_return_conditional_losses_8023703\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
L__inference_encoder_layer10_layer_call_and_return_conditional_losses_8023708\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
1__inference_encoder_layer10_layer_call_fn_8023713O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
1__inference_encoder_layer10_layer_call_fn_8023718O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_8023391^/00?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_encoder_layer1_layer_call_fn_8023400Q/00?-
&?#
!?
inputs??????????
? "????????????
K__inference_encoder_layer2_layer_call_and_return_conditional_losses_8023411]120?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ?
0__inference_encoder_layer2_layer_call_fn_8023420P120?-
&?#
!?
inputs??????????
? "??????????@?
K__inference_encoder_layer3_layer_call_and_return_conditional_losses_8023456b56343?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
K__inference_encoder_layer3_layer_call_and_return_conditional_losses_8023476b63543?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
0__inference_encoder_layer3_layer_call_fn_8023489U56343?0
)?&
 ?
inputs?????????@
p
? "??????????@?
0__inference_encoder_layer3_layer_call_fn_8023502U63543?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
K__inference_encoder_layer4_layer_call_and_return_conditional_losses_8023514\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
K__inference_encoder_layer4_layer_call_and_return_conditional_losses_8023519\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
0__inference_encoder_layer4_layer_call_fn_8023524O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
0__inference_encoder_layer4_layer_call_fn_8023529O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
K__inference_encoder_layer5_layer_call_and_return_conditional_losses_8023540]78/?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????
? ?
0__inference_encoder_layer5_layer_call_fn_8023549P78/?,
%?"
 ?
inputs?????????@
? "????????????
K__inference_encoder_layer6_layer_call_and_return_conditional_losses_8023560^9:0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_encoder_layer6_layer_call_fn_8023569Q9:0?-
&?#
!?
inputs??????????
? "????????????
K__inference_encoder_layer7_layer_call_and_return_conditional_losses_8023580^;<0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_encoder_layer7_layer_call_fn_8023589Q;<0?-
&?#
!?
inputs??????????
? "????????????
K__inference_encoder_layer8_layer_call_and_return_conditional_losses_8023600]=>0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ?
0__inference_encoder_layer8_layer_call_fn_8023609P=>0?-
&?#
!?
inputs??????????
? "??????????@?
K__inference_encoder_layer9_layer_call_and_return_conditional_losses_8023645bAB?@3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
K__inference_encoder_layer9_layer_call_and_return_conditional_losses_8023665bB?A@3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
0__inference_encoder_layer9_layer_call_fn_8023678UAB?@3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
0__inference_encoder_layer9_layer_call_fn_8023691UB?A@3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
K__inference_output_encoder_layer_call_and_return_conditional_losses_8023729\CD/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????

? ?
0__inference_output_encoder_layer_call_fn_8023738OCD/?,
%?"
 ?
inputs?????????@
? "??????????
?
I__inference_output_layer_layer_call_and_return_conditional_losses_8024087]YZ/?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????
? ?
.__inference_output_layer_layer_call_fn_8024096PYZ/?,
%?"
 ?
inputs?????????@
? "????????????
%__inference_signature_wrapper_8022126?,/0126354789:;<=>B?A@CDEFGHLIKJMNOPQRSTXUWVYZP?M
? 
F?C
A
input_autoencoder,?)
input_autoencoder??????????"2?/
-
Decoder"?
Decoder??????????