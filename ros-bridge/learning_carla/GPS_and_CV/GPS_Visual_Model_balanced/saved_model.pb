Ґє
≈Ф
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Ѓ
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Ѕ
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
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58њЇ
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
~
Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_3/bias
w
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_3/bias
w
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes
:*
dtype0
З
Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ѕ*&
shared_nameAdam/v/dense_3/kernel
А
)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel*
_output_shapes
:	Ѕ*
dtype0
З
Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ѕ*&
shared_nameAdam/m/dense_3/kernel
А
)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel*
_output_shapes
:	Ѕ*
dtype0
~
Adam/v/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_2/bias
w
'Adam/v/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_2/bias
w
'Adam/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/bias*
_output_shapes
:*
dtype0
Ж
Adam/v/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/v/dense_2/kernel

)Adam/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/kernel*
_output_shapes

: *
dtype0
Ж
Adam/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/m/dense_2/kernel

)Adam/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/kernel*
_output_shapes

: *
dtype0
~
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
: *
dtype0
~
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
: *
dtype0
З
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А *&
shared_nameAdam/v/dense_1/kernel
А
)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes
:	А *
dtype0
З
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А *&
shared_nameAdam/m/dense_1/kernel
А
)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes
:	А *
dtype0
{
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/v/dense/bias
t
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes	
:А*
dtype0
{
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/m/dense/bias
t
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes	
:А*
dtype0
Г
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*$
shared_nameAdam/v/dense/kernel
|
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*
_output_shapes
:	@А*
dtype0
Г
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*$
shared_nameAdam/m/dense/kernel
|
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*
_output_shapes
:	@А*
dtype0
А
Adam/v/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_2/bias
y
(Adam/v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/bias*
_output_shapes
:@*
dtype0
А
Adam/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_2/bias
y
(Adam/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/bias*
_output_shapes
:@*
dtype0
Р
Adam/v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_2/kernel
Й
*Adam/v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/kernel*&
_output_shapes
:@@*
dtype0
Р
Adam/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_2/kernel
Й
*Adam/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/kernel*&
_output_shapes
:@@*
dtype0
А
Adam/v/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_1/bias
y
(Adam/v/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/bias*
_output_shapes
:@*
dtype0
А
Adam/m/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_1/bias
y
(Adam/m/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/bias*
_output_shapes
:@*
dtype0
Р
Adam/v/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_1/kernel
Й
*Adam/v/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/kernel*&
_output_shapes
:@@*
dtype0
Р
Adam/m/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_1/kernel
Й
*Adam/m/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/kernel*&
_output_shapes
:@@*
dtype0
|
Adam/v/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/v/conv2d/bias
u
&Adam/v/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/bias*
_output_shapes
:@*
dtype0
|
Adam/m/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/m/conv2d/bias
u
&Adam/m/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/bias*
_output_shapes
:@*
dtype0
М
Adam/v/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d/kernel
Е
(Adam/v/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/kernel*&
_output_shapes
:@*
dtype0
М
Adam/m/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d/kernel
Е
(Adam/m/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/kernel*&
_output_shapes
:@*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ѕ*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	Ѕ*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

: *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
: *
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А *
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	А *
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	@А*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
В
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
В
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:@@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0
О
serving_default_input_1Placeholder*1
_output_shapes
:€€€€€€€€€іј*
dtype0*&
shape:€€€€€€€€€іј
z
serving_default_input_2Placeholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
ґ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference_signature_wrapper_6843

NoOpNoOp
—j
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Мj
valueВjB€i Bшi
Љ
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer-12
layer_with_weights-6
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
  _jit_compiled_convolution_op*
О
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses* 
»
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op*
О
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
»
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias
 >_jit_compiled_convolution_op*
О
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses* 
¶
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias*
¶
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias*
¶
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias*
О
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses* 
* 
О
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses* 
¶
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

okernel
pbias*
j
0
1
-2
.3
<4
=5
K6
L7
S8
T9
[10
\11
o12
p13*
j
0
1
-2
.3
<4
=5
K6
L7
S8
T9
[10
\11
o12
p13*
* 
∞
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
vtrace_0
wtrace_1
xtrace_2
ytrace_3* 
6
ztrace_0
{trace_1
|trace_2
}trace_3* 
* 
Ж
~
_variables
_iterations
А_learning_rate
Б_index_dict
В
_momentums
Г_velocities
Д_update_step_xla*

Еserving_default* 

0
1*

0
1*
* 
Ј
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
Лactivity_regularizer_fn
*&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses*

Нtrace_0* 

Оtrace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 

Фtrace_0* 

Хtrace_0* 

-0
.1*

-0
.1*
* 
Ј
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
Ыactivity_regularizer_fn
*,&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses*

Эtrace_0* 

Юtrace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

§trace_0* 

•trace_0* 

<0
=1*

<0
=1*
* 
Ј
¶non_trainable_variables
Іlayers
®metrics
 ©layer_regularization_losses
™layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
Ђactivity_regularizer_fn
*;&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses*

≠trace_0* 

Ѓtrace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 

іtrace_0* 

µtrace_0* 

K0
L1*

K0
L1*
* 
Ј
ґnon_trainable_variables
Јlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
їactivity_regularizer_fn
*J&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses*

љtrace_0* 

Њtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

S0
T1*

S0
T1*
* 
Ј
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
ƒactivity_regularizer_fn
*R&call_and_return_all_conditional_losses
'≈"call_and_return_conditional_losses*

∆trace_0* 

«trace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

[0
\1*

[0
\1*
* 
Ј
»non_trainable_variables
…layers
 metrics
 Ћlayer_regularization_losses
ћlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
Ќactivity_regularizer_fn
*Z&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses*

ѕtrace_0* 

–trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
—non_trainable_variables
“layers
”metrics
 ‘layer_regularization_losses
’layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses* 

÷trace_0* 

„trace_0* 
* 
* 
* 
Ц
Ўnon_trainable_variables
ўlayers
Џmetrics
 џlayer_regularization_losses
№layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses* 

Ёtrace_0* 

ёtrace_0* 

o0
p1*

o0
p1*
* 
Ш
яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

дtrace_0* 

еtrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
j
0
1
2
3
4
5
6
7
	8

9
10
11
12
13*

ж0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
ю
0
з1
и2
й3
к4
л5
м6
н7
о8
п9
р10
с11
т12
у13
ф14
х15
ц16
ч17
ш18
щ19
ъ20
ы21
ь22
э23
ю24
€25
А26
Б27
В28*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
x
з0
й1
л2
н3
п4
с5
у6
х7
ч8
щ9
ы10
э11
€12
Б13*
x
и0
к1
м2
о3
р4
т5
ф6
ц7
ш8
ъ9
ь10
ю11
А12
В13*
* 
* 
* 
* 
* 
* 
* 

Гtrace_0* 

Дtrace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Еtrace_0* 

Жtrace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Зtrace_0* 

Иtrace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Йtrace_0* 

Кtrace_0* 
* 
* 
* 
* 
* 
* 
* 

Лtrace_0* 

Мtrace_0* 
* 
* 
* 
* 
* 
* 
* 

Нtrace_0* 

Оtrace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
П	variables
Р	keras_api

Сtotal

Тcount*
_Y
VARIABLE_VALUEAdam/m/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/conv2d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/conv2d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/dense/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/dense/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_2/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_2/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_2/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_2/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_3/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_3/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_3/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_3/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

С0
Т1*

П	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ї
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp(Adam/m/conv2d/kernel/Read/ReadVariableOp(Adam/v/conv2d/kernel/Read/ReadVariableOp&Adam/m/conv2d/bias/Read/ReadVariableOp&Adam/v/conv2d/bias/Read/ReadVariableOp*Adam/m/conv2d_1/kernel/Read/ReadVariableOp*Adam/v/conv2d_1/kernel/Read/ReadVariableOp(Adam/m/conv2d_1/bias/Read/ReadVariableOp(Adam/v/conv2d_1/bias/Read/ReadVariableOp*Adam/m/conv2d_2/kernel/Read/ReadVariableOp*Adam/v/conv2d_2/kernel/Read/ReadVariableOp(Adam/m/conv2d_2/bias/Read/ReadVariableOp(Adam/v/conv2d_2/bias/Read/ReadVariableOp'Adam/m/dense/kernel/Read/ReadVariableOp'Adam/v/dense/kernel/Read/ReadVariableOp%Adam/m/dense/bias/Read/ReadVariableOp%Adam/v/dense/bias/Read/ReadVariableOp)Adam/m/dense_1/kernel/Read/ReadVariableOp)Adam/v/dense_1/kernel/Read/ReadVariableOp'Adam/m/dense_1/bias/Read/ReadVariableOp'Adam/v/dense_1/bias/Read/ReadVariableOp)Adam/m/dense_2/kernel/Read/ReadVariableOp)Adam/v/dense_2/kernel/Read/ReadVariableOp'Adam/m/dense_2/bias/Read/ReadVariableOp'Adam/v/dense_2/bias/Read/ReadVariableOp)Adam/m/dense_3/kernel/Read/ReadVariableOp)Adam/v/dense_3/kernel/Read/ReadVariableOp'Adam/m/dense_3/bias/Read/ReadVariableOp'Adam/v/dense_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*;
Tin4
220	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *&
f!R
__inference__traced_save_7776
Ю	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/biasAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/biasAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotalcount*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__traced_restore_7924ш’
–ј
≥
 __inference__traced_restore_7924
file_prefix8
assignvariableop_conv2d_kernel:@,
assignvariableop_1_conv2d_bias:@<
"assignvariableop_2_conv2d_1_kernel:@@.
 assignvariableop_3_conv2d_1_bias:@<
"assignvariableop_4_conv2d_2_kernel:@@.
 assignvariableop_5_conv2d_2_bias:@2
assignvariableop_6_dense_kernel:	@А,
assignvariableop_7_dense_bias:	А4
!assignvariableop_8_dense_1_kernel:	А -
assignvariableop_9_dense_1_bias: 4
"assignvariableop_10_dense_2_kernel: .
 assignvariableop_11_dense_2_bias:5
"assignvariableop_12_dense_3_kernel:	Ѕ.
 assignvariableop_13_dense_3_bias:'
assignvariableop_14_iteration:	 +
!assignvariableop_15_learning_rate: B
(assignvariableop_16_adam_m_conv2d_kernel:@B
(assignvariableop_17_adam_v_conv2d_kernel:@4
&assignvariableop_18_adam_m_conv2d_bias:@4
&assignvariableop_19_adam_v_conv2d_bias:@D
*assignvariableop_20_adam_m_conv2d_1_kernel:@@D
*assignvariableop_21_adam_v_conv2d_1_kernel:@@6
(assignvariableop_22_adam_m_conv2d_1_bias:@6
(assignvariableop_23_adam_v_conv2d_1_bias:@D
*assignvariableop_24_adam_m_conv2d_2_kernel:@@D
*assignvariableop_25_adam_v_conv2d_2_kernel:@@6
(assignvariableop_26_adam_m_conv2d_2_bias:@6
(assignvariableop_27_adam_v_conv2d_2_bias:@:
'assignvariableop_28_adam_m_dense_kernel:	@А:
'assignvariableop_29_adam_v_dense_kernel:	@А4
%assignvariableop_30_adam_m_dense_bias:	А4
%assignvariableop_31_adam_v_dense_bias:	А<
)assignvariableop_32_adam_m_dense_1_kernel:	А <
)assignvariableop_33_adam_v_dense_1_kernel:	А 5
'assignvariableop_34_adam_m_dense_1_bias: 5
'assignvariableop_35_adam_v_dense_1_bias: ;
)assignvariableop_36_adam_m_dense_2_kernel: ;
)assignvariableop_37_adam_v_dense_2_kernel: 5
'assignvariableop_38_adam_m_dense_2_bias:5
'assignvariableop_39_adam_v_dense_2_bias:<
)assignvariableop_40_adam_m_dense_3_kernel:	Ѕ<
)assignvariableop_41_adam_v_dense_3_kernel:	Ѕ5
'assignvariableop_42_adam_m_dense_3_bias:5
'assignvariableop_43_adam_v_dense_3_bias:#
assignvariableop_44_total: #
assignvariableop_45_count: 
identity_47ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Й
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*ѓ
value•BҐ/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHќ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B М
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*“
_output_shapesњ
Љ:::::::::::::::::::::::::::::::::::::::::::::::*=
dtypes3
12/	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_1_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_1_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_2_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_2_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_3_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_3_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterationIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_15AssignVariableOp!assignvariableop_15_learning_rateIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_m_conv2d_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_v_conv2d_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_m_conv2d_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_19AssignVariableOp&assignvariableop_19_adam_v_conv2d_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_m_conv2d_1_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_v_conv2d_1_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_m_conv2d_1_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_v_conv2d_1_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_m_conv2d_2_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_v_conv2d_2_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_m_conv2d_2_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_v_conv2d_2_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_m_dense_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_v_dense_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_30AssignVariableOp%assignvariableop_30_adam_m_dense_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_31AssignVariableOp%assignvariableop_31_adam_v_dense_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_m_dense_1_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_v_dense_1_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_m_dense_1_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_v_dense_1_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_m_dense_2_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_v_dense_2_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_m_dense_2_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_v_dense_2_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_m_dense_3_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_v_dense_3_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_m_dense_3_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_v_dense_3_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_44AssignVariableOpassignvariableop_44_totalIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_45AssignVariableOpassignvariableop_45_countIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 √
Identity_46Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_47IdentityIdentity_46:output:0^NoOp_1*
T0*
_output_shapes
: ∞
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_47Identity_47:output:0*q
_input_shapes`
^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
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
AssignVariableOp_45AssignVariableOp_452(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
√
]
A__inference_flatten_layer_call_and_return_conditional_losses_6162

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€(:W S
/
_output_shapes
:€€€€€€€€€(
 
_user_specified_nameinputs
№
У
$__inference_dense_layer_call_fn_7427

inputs
unknown:	@А
	unknown_0:	А
identityИҐStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€(А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_6052x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€(А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€(@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€(@
 
_user_specified_nameinputs
ц
E
.__inference_conv2d_1_activity_regularizer_5878
x
identity4
L2LossL2Lossx*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7L
mulMulmul/x:output:0L2Loss:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
к
Ъ
%__inference_conv2d_layer_call_fn_7304

inputs!
unknown:@
	unknown_0:@
identityИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іј@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_5954y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іј@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€іј: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€іј
 
_user_specified_nameinputs
Ї
o
E__inference_concatenate_layer_call_and_return_conditional_losses_6171

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :v
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ЅX
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ѕ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€ј:€€€€€€€€€:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѓ
√
E__inference_dense_1_layer_call_and_return_all_conditional_losses_7489

inputs
unknown:	А 
	unknown_0: 
identity

identity_1ИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€( *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_6097°
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *6
f1R/
-__inference_dense_1_activity_regularizer_5926w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€( X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€(А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€(А
 
_user_specified_nameinputs
Б
ы
B__inference_conv2d_2_layer_call_and_return_conditional_losses_7408

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-P@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-P@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€-P@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€-P@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€-P@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€-P@
 
_user_specified_nameinputs
®
V
*__inference_concatenate_layer_call_fn_7588
inputs_0
inputs_1
identityЊ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Ѕ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_6171a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ѕ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€ј:€€€€€€€€€:R N
(
_output_shapes
:€€€€€€€€€ј
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1
пА
ч
?__inference_model_layer_call_and_return_conditional_losses_6530

inputs
inputs_1%
conv2d_6435:@
conv2d_6437:@'
conv2d_1_6449:@@
conv2d_1_6451:@'
conv2d_2_6463:@@
conv2d_2_6465:@

dense_6477:	@А

dense_6479:	А
dense_1_6490:	А 
dense_1_6492: 
dense_2_6503: 
dense_2_6505:
dense_3_6518:	Ѕ
dense_3_6520:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6ИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallм
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_6435conv2d_6437*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іј@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_5954¬
*conv2d/ActivityRegularizer/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *5
f0R.
,__inference_conv2d_activity_regularizer_5858w
 conv2d/ActivityRegularizer/ShapeShape'conv2d/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:x
.conv2d/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0conv2d/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0conv2d/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(conv2d/ActivityRegularizer/strided_sliceStridedSlice)conv2d/ActivityRegularizer/Shape:output:07conv2d/ActivityRegularizer/strided_slice/stack:output:09conv2d/ActivityRegularizer/strided_slice/stack_1:output:09conv2d/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskК
conv2d/ActivityRegularizer/CastCast1conv2d/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
"conv2d/ActivityRegularizer/truedivRealDiv3conv2d/ActivityRegularizer/PartitionedCall:output:0#conv2d/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: к
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Z†@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_5867У
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_6449conv2d_1_6451*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Z†@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5980»
,conv2d_1/ActivityRegularizer/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *7
f2R0
.__inference_conv2d_1_activity_regularizer_5878{
"conv2d_1/ActivityRegularizer/ShapeShape)conv2d_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0conv2d_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv2d_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv2d_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*conv2d_1/ActivityRegularizer/strided_sliceStridedSlice+conv2d_1/ActivityRegularizer/Shape:output:09conv2d_1/ActivityRegularizer/strided_slice/stack:output:0;conv2d_1/ActivityRegularizer/strided_slice/stack_1:output:0;conv2d_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
!conv2d_1/ActivityRegularizer/CastCast3conv2d_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ѓ
$conv2d_1/ActivityRegularizer/truedivRealDiv5conv2d_1/ActivityRegularizer/PartitionedCall:output:0%conv2d_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: п
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-P@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5887Ф
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_6463conv2d_2_6465*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-P@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_6006»
,conv2d_2/ActivityRegularizer/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *7
f2R0
.__inference_conv2d_2_activity_regularizer_5898{
"conv2d_2/ActivityRegularizer/ShapeShape)conv2d_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0conv2d_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv2d_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv2d_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*conv2d_2/ActivityRegularizer/strided_sliceStridedSlice+conv2d_2/ActivityRegularizer/Shape:output:09conv2d_2/ActivityRegularizer/strided_slice/stack:output:0;conv2d_2/ActivityRegularizer/strided_slice/stack_1:output:0;conv2d_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
!conv2d_2/ActivityRegularizer/CastCast3conv2d_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ѓ
$conv2d_2/ActivityRegularizer/truedivRealDiv5conv2d_2/ActivityRegularizer/PartitionedCall:output:0%conv2d_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: п
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5907Й
dense/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0
dense_6477
dense_6479*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€(А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_6052њ
)dense/ActivityRegularizer/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *4
f/R-
+__inference_dense_activity_regularizer_5918u
dense/ActivityRegularizer/ShapeShape&dense/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskИ
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: •
!dense/ActivityRegularizer/truedivRealDiv2dense/ActivityRegularizer/PartitionedCall:output:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: О
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6490dense_1_6492*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€( *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_6097≈
+dense_1/ActivityRegularizer/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *6
f1R/
-__inference_dense_1_activity_regularizer_5926y
!dense_1/ActivityRegularizer/ShapeShape(dense_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)dense_1/ActivityRegularizer/strided_sliceStridedSlice*dense_1/ActivityRegularizer/Shape:output:08dense_1/ActivityRegularizer/strided_slice/stack:output:0:dense_1/ActivityRegularizer/strided_slice/stack_1:output:0:dense_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 dense_1/ActivityRegularizer/CastCast2dense_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ђ
#dense_1/ActivityRegularizer/truedivRealDiv4dense_1/ActivityRegularizer/PartitionedCall:output:0$dense_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Р
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6503dense_2_6505*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6142≈
+dense_2/ActivityRegularizer/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *6
f1R/
-__inference_dense_2_activity_regularizer_5934y
!dense_2/ActivityRegularizer/ShapeShape(dense_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)dense_2/ActivityRegularizer/strided_sliceStridedSlice*dense_2/ActivityRegularizer/Shape:output:08dense_2/ActivityRegularizer/strided_slice/stack:output:0:dense_2/ActivityRegularizer/strided_slice/stack_1:output:0:dense_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 dense_2/ActivityRegularizer/CastCast2dense_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ђ
#dense_2/ActivityRegularizer/truedivRealDiv4dense_2/ActivityRegularizer/PartitionedCall:output:0$dense_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: „
flatten/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_6162в
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Ѕ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_6171Д
dense_3/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_3_6518dense_3_6520*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_6183w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€f

Identity_1Identity&conv2d/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(conv2d_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_3Identity(conv2d_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_5Identity'dense_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_6Identity'dense_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ≥
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€іј:€€€€€€€€€: : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€іј
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7377

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
х
D
-__inference_dense_1_activity_regularizer_5926
x
identity4
L2LossL2Lossx*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7L
mulMulmul/x:output:0L2Loss:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
к
Ь
'__inference_conv2d_1_layer_call_fn_7345

inputs!
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Z†@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5980x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Z†@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€Z†@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€Z†@
 
_user_specified_nameinputs
∆
щ
A__inference_dense_1_layer_call_and_return_conditional_losses_7520

inputs4
!tensordot_readvariableop_resource:	А -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	А *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:~
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*0
_output_shapes
:€€€€€€€€€(АК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€( r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0А
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€( X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€( i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€( z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€(А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€(А
 
_user_specified_nameinputs
П
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7336

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
№
У
&__inference_dense_2_layer_call_fn_7529

inputs
unknown: 
	unknown_0:
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6142w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€( : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€( 
 
_user_specified_nameinputs
сА
ч
?__inference_model_layer_call_and_return_conditional_losses_6706
input_1
input_2%
conv2d_6611:@
conv2d_6613:@'
conv2d_1_6625:@@
conv2d_1_6627:@'
conv2d_2_6639:@@
conv2d_2_6641:@

dense_6653:	@А

dense_6655:	А
dense_1_6666:	А 
dense_1_6668: 
dense_2_6679: 
dense_2_6681:
dense_3_6694:	Ѕ
dense_3_6696:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6ИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallн
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_6611conv2d_6613*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іј@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_5954¬
*conv2d/ActivityRegularizer/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *5
f0R.
,__inference_conv2d_activity_regularizer_5858w
 conv2d/ActivityRegularizer/ShapeShape'conv2d/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:x
.conv2d/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0conv2d/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0conv2d/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(conv2d/ActivityRegularizer/strided_sliceStridedSlice)conv2d/ActivityRegularizer/Shape:output:07conv2d/ActivityRegularizer/strided_slice/stack:output:09conv2d/ActivityRegularizer/strided_slice/stack_1:output:09conv2d/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskК
conv2d/ActivityRegularizer/CastCast1conv2d/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
"conv2d/ActivityRegularizer/truedivRealDiv3conv2d/ActivityRegularizer/PartitionedCall:output:0#conv2d/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: к
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Z†@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_5867У
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_6625conv2d_1_6627*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Z†@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5980»
,conv2d_1/ActivityRegularizer/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *7
f2R0
.__inference_conv2d_1_activity_regularizer_5878{
"conv2d_1/ActivityRegularizer/ShapeShape)conv2d_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0conv2d_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv2d_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv2d_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*conv2d_1/ActivityRegularizer/strided_sliceStridedSlice+conv2d_1/ActivityRegularizer/Shape:output:09conv2d_1/ActivityRegularizer/strided_slice/stack:output:0;conv2d_1/ActivityRegularizer/strided_slice/stack_1:output:0;conv2d_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
!conv2d_1/ActivityRegularizer/CastCast3conv2d_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ѓ
$conv2d_1/ActivityRegularizer/truedivRealDiv5conv2d_1/ActivityRegularizer/PartitionedCall:output:0%conv2d_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: п
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-P@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5887Ф
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_6639conv2d_2_6641*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-P@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_6006»
,conv2d_2/ActivityRegularizer/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *7
f2R0
.__inference_conv2d_2_activity_regularizer_5898{
"conv2d_2/ActivityRegularizer/ShapeShape)conv2d_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0conv2d_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv2d_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv2d_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*conv2d_2/ActivityRegularizer/strided_sliceStridedSlice+conv2d_2/ActivityRegularizer/Shape:output:09conv2d_2/ActivityRegularizer/strided_slice/stack:output:0;conv2d_2/ActivityRegularizer/strided_slice/stack_1:output:0;conv2d_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
!conv2d_2/ActivityRegularizer/CastCast3conv2d_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ѓ
$conv2d_2/ActivityRegularizer/truedivRealDiv5conv2d_2/ActivityRegularizer/PartitionedCall:output:0%conv2d_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: п
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5907Й
dense/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0
dense_6653
dense_6655*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€(А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_6052њ
)dense/ActivityRegularizer/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *4
f/R-
+__inference_dense_activity_regularizer_5918u
dense/ActivityRegularizer/ShapeShape&dense/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskИ
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: •
!dense/ActivityRegularizer/truedivRealDiv2dense/ActivityRegularizer/PartitionedCall:output:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: О
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6666dense_1_6668*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€( *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_6097≈
+dense_1/ActivityRegularizer/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *6
f1R/
-__inference_dense_1_activity_regularizer_5926y
!dense_1/ActivityRegularizer/ShapeShape(dense_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)dense_1/ActivityRegularizer/strided_sliceStridedSlice*dense_1/ActivityRegularizer/Shape:output:08dense_1/ActivityRegularizer/strided_slice/stack:output:0:dense_1/ActivityRegularizer/strided_slice/stack_1:output:0:dense_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 dense_1/ActivityRegularizer/CastCast2dense_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ђ
#dense_1/ActivityRegularizer/truedivRealDiv4dense_1/ActivityRegularizer/PartitionedCall:output:0$dense_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Р
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6679dense_2_6681*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6142≈
+dense_2/ActivityRegularizer/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *6
f1R/
-__inference_dense_2_activity_regularizer_5934y
!dense_2/ActivityRegularizer/ShapeShape(dense_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)dense_2/ActivityRegularizer/strided_sliceStridedSlice*dense_2/ActivityRegularizer/Shape:output:08dense_2/ActivityRegularizer/strided_slice/stack:output:0:dense_2/ActivityRegularizer/strided_slice/stack_1:output:0:dense_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 dense_2/ActivityRegularizer/CastCast2dense_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ђ
#dense_2/ActivityRegularizer/truedivRealDiv4dense_2/ActivityRegularizer/PartitionedCall:output:0$dense_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: „
flatten/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_6162б
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0input_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Ѕ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_6171Д
dense_3/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_3_6694dense_3_6696*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_6183w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€f

Identity_1Identity&conv2d/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(conv2d_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_3Identity(conv2d_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_5Identity'dense_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_6Identity'dense_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ≥
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€іј:€€€€€€€€€: : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€іј
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
∆
щ
A__inference_dense_1_layer_call_and_return_conditional_losses_6097

inputs4
!tensordot_readvariableop_resource:	А -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	А *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:~
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*0
_output_shapes
:€€€€€€€€€(АК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€( r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0А
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€( X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€( i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€( z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€(А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€(А
 
_user_specified_nameinputs
я
Ф
&__inference_dense_1_layer_call_fn_7478

inputs
unknown:	А 
	unknown_0: 
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€( *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_6097w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€( `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€(А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€(А
 
_user_specified_nameinputs
¬
q
E__inference_concatenate_layer_call_and_return_conditional_losses_7595
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :x
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ЅX
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:€€€€€€€€€Ѕ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€ј:€€€€€€€€€:R N
(
_output_shapes
:€€€€€€€€€ј
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1
ч
В
$__inference_model_layer_call_fn_6607
input_1
input_2!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:	@А
	unknown_6:	А
	unknown_7:	А 
	unknown_8: 
	unknown_9: 

unknown_10:

unknown_11:	Ѕ

unknown_12:
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
	2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€: : : : : : *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_6530o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€іј:€€€€€€€€€: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€іј
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
Л
щ
@__inference_conv2d_layer_call_and_return_conditional_losses_7326

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іј@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іј@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€іј@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іј@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€іј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€іј
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_7418

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ј
Ћ
F__inference_conv2d_2_layer_call_and_return_all_conditional_losses_7397

inputs!
unknown:@@
	unknown_0:@
identity

identity_1ИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-P@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_6006Ґ
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *7
f2R0
.__inference_conv2d_2_activity_regularizer_5898w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€-P@X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€-P@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€-P@
 
_user_specified_nameinputs
у
B
+__inference_dense_activity_regularizer_5918
x
identity4
L2LossL2Lossx*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7L
mulMulmul/x:output:0L2Loss:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
Ѕ
ш
A__inference_dense_2_layer_call_and_return_conditional_losses_7571

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:}
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€( К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0А
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€(z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€( : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€( 
 
_user_specified_nameinputs
Б
ы
B__inference_conv2d_2_layer_call_and_return_conditional_losses_6006

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-P@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-P@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€-P@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€-P@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€-P@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€-P@
 
_user_specified_nameinputs
оX
Ў
__inference__traced_save_7776
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop3
/savev2_adam_m_conv2d_kernel_read_readvariableop3
/savev2_adam_v_conv2d_kernel_read_readvariableop1
-savev2_adam_m_conv2d_bias_read_readvariableop1
-savev2_adam_v_conv2d_bias_read_readvariableop5
1savev2_adam_m_conv2d_1_kernel_read_readvariableop5
1savev2_adam_v_conv2d_1_kernel_read_readvariableop3
/savev2_adam_m_conv2d_1_bias_read_readvariableop3
/savev2_adam_v_conv2d_1_bias_read_readvariableop5
1savev2_adam_m_conv2d_2_kernel_read_readvariableop5
1savev2_adam_v_conv2d_2_kernel_read_readvariableop3
/savev2_adam_m_conv2d_2_bias_read_readvariableop3
/savev2_adam_v_conv2d_2_bias_read_readvariableop2
.savev2_adam_m_dense_kernel_read_readvariableop2
.savev2_adam_v_dense_kernel_read_readvariableop0
,savev2_adam_m_dense_bias_read_readvariableop0
,savev2_adam_v_dense_bias_read_readvariableop4
0savev2_adam_m_dense_1_kernel_read_readvariableop4
0savev2_adam_v_dense_1_kernel_read_readvariableop2
.savev2_adam_m_dense_1_bias_read_readvariableop2
.savev2_adam_v_dense_1_bias_read_readvariableop4
0savev2_adam_m_dense_2_kernel_read_readvariableop4
0savev2_adam_v_dense_2_kernel_read_readvariableop2
.savev2_adam_m_dense_2_bias_read_readvariableop2
.savev2_adam_v_dense_2_bias_read_readvariableop4
0savev2_adam_m_dense_3_kernel_read_readvariableop4
0savev2_adam_v_dense_3_kernel_read_readvariableop2
.savev2_adam_m_dense_3_bias_read_readvariableop2
.savev2_adam_v_dense_3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ж
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*ѓ
value•BҐ/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЋ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Љ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop/savev2_adam_m_conv2d_kernel_read_readvariableop/savev2_adam_v_conv2d_kernel_read_readvariableop-savev2_adam_m_conv2d_bias_read_readvariableop-savev2_adam_v_conv2d_bias_read_readvariableop1savev2_adam_m_conv2d_1_kernel_read_readvariableop1savev2_adam_v_conv2d_1_kernel_read_readvariableop/savev2_adam_m_conv2d_1_bias_read_readvariableop/savev2_adam_v_conv2d_1_bias_read_readvariableop1savev2_adam_m_conv2d_2_kernel_read_readvariableop1savev2_adam_v_conv2d_2_kernel_read_readvariableop/savev2_adam_m_conv2d_2_bias_read_readvariableop/savev2_adam_v_conv2d_2_bias_read_readvariableop.savev2_adam_m_dense_kernel_read_readvariableop.savev2_adam_v_dense_kernel_read_readvariableop,savev2_adam_m_dense_bias_read_readvariableop,savev2_adam_v_dense_bias_read_readvariableop0savev2_adam_m_dense_1_kernel_read_readvariableop0savev2_adam_v_dense_1_kernel_read_readvariableop.savev2_adam_m_dense_1_bias_read_readvariableop.savev2_adam_v_dense_1_bias_read_readvariableop0savev2_adam_m_dense_2_kernel_read_readvariableop0savev2_adam_v_dense_2_kernel_read_readvariableop.savev2_adam_m_dense_2_bias_read_readvariableop.savev2_adam_v_dense_2_bias_read_readvariableop0savev2_adam_m_dense_3_kernel_read_readvariableop0savev2_adam_v_dense_3_kernel_read_readvariableop.savev2_adam_m_dense_3_bias_read_readvariableop.savev2_adam_v_dense_3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *=
dtypes3
12/	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*≈
_input_shapes≥
∞: :@:@:@@:@:@@:@:	@А:А:	А : : ::	Ѕ:: : :@:@:@:@:@@:@@:@:@:@@:@@:@:@:	@А:	@А:А:А:	А :	А : : : : :::	Ѕ:	Ѕ::: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	@А:!

_output_shapes	
:А:%	!

_output_shapes
:	А : 


_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	Ѕ: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@:%!

_output_shapes
:	@А:%!

_output_shapes
:	@А:!

_output_shapes	
:А:! 

_output_shapes	
:А:%!!

_output_shapes
:	А :%"!

_output_shapes
:	А : #

_output_shapes
: : $

_output_shapes
: :$% 

_output_shapes

: :$& 

_output_shapes

: : '

_output_shapes
:: (

_output_shapes
::%)!

_output_shapes
:	Ѕ:%*!

_output_shapes
:	Ѕ: +

_output_shapes
:: ,

_output_shapes
::-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: 
х
D
-__inference_dense_2_activity_regularizer_5934
x
identity4
L2LossL2Lossx*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7L
mulMulmul/x:output:0L2Loss:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
і
J
.__inference_max_pooling2d_2_layer_call_fn_7413

inputs
identity„
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5907Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
З
ы
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5980

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Z†@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€Z†@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€Z†@
 
_user_specified_nameinputs
З
ы
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7367

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Z†@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€Z†@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€Z†@
 
_user_specified_nameinputs
њ
Ф
&__inference_dense_3_layer_call_fn_7604

inputs
unknown:	Ѕ
	unknown_0:
identityИҐStatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_6183o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Ѕ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€Ѕ
 
_user_specified_nameinputs
ф
C
,__inference_conv2d_activity_regularizer_5858
x
identity4
L2LossL2Lossx*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7L
mulMulmul/x:output:0L2Loss:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
™
¬
C__inference_dense_layer_call_and_return_all_conditional_losses_7438

inputs
unknown:	@А
	unknown_0:	А
identity

identity_1ИҐStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€(А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_6052Я
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *4
f/R-
+__inference_dense_activity_regularizer_5918x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€(АX

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€(@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€(@
 
_user_specified_nameinputs
√
А
"__inference_signature_wrapper_6843
input_1
input_2!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:	@А
	unknown_6:	А
	unknown_7:	А 
	unknown_8: 
	unknown_9: 

unknown_10:

unknown_11:	Ѕ

unknown_12:
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__wrapped_model_5850o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€іј:€€€€€€€€€: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€іј
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
П
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_5867

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
є’
÷
?__inference_model_layer_call_and_return_conditional_losses_7109
inputs_0
inputs_1?
%conv2d_conv2d_readvariableop_resource:@4
&conv2d_biasadd_readvariableop_resource:@A
'conv2d_1_conv2d_readvariableop_resource:@@6
(conv2d_1_biasadd_readvariableop_resource:@A
'conv2d_2_conv2d_readvariableop_resource:@@6
(conv2d_2_biasadd_readvariableop_resource:@:
'dense_tensordot_readvariableop_resource:	@А4
%dense_biasadd_readvariableop_resource:	А<
)dense_1_tensordot_readvariableop_resource:	А 5
'dense_1_biasadd_readvariableop_resource: ;
)dense_2_tensordot_readvariableop_resource: 5
'dense_2_biasadd_readvariableop_resource:9
&dense_3_matmul_readvariableop_resource:	Ѕ5
'dense_3_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6ИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOpҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐdense/BiasAdd/ReadVariableOpҐdense/Tensordot/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐ dense_1/Tensordot/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐ dense_2/Tensordot/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpК
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ђ
conv2d/Conv2DConv2Dinputs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іј@*
paddingSAME*
strides
А
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іј@h
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€іј@g
!conv2d/ActivityRegularizer/L2LossL2Lossconv2d/Relu:activations:0*
T0*
_output_shapes
: e
 conv2d/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7Э
conv2d/ActivityRegularizer/mulMul)conv2d/ActivityRegularizer/mul/x:output:0*conv2d/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: i
 conv2d/ActivityRegularizer/ShapeShapeconv2d/Relu:activations:0*
T0*
_output_shapes
:x
.conv2d/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0conv2d/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0conv2d/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(conv2d/ActivityRegularizer/strided_sliceStridedSlice)conv2d/ActivityRegularizer/Shape:output:07conv2d/ActivityRegularizer/strided_slice/stack:output:09conv2d/ActivityRegularizer/strided_slice/stack_1:output:09conv2d/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskК
conv2d/ActivityRegularizer/CastCast1conv2d/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ч
"conv2d/ActivityRegularizer/truedivRealDiv"conv2d/ActivityRegularizer/mul:z:0#conv2d/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ©
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*0
_output_shapes
:€€€€€€€€€Z†@*
ksize
*
paddingVALID*
strides
О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ƒ
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@*
paddingSAME*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Щ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@k
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@k
#conv2d_1/ActivityRegularizer/L2LossL2Lossconv2d_1/Relu:activations:0*
T0*
_output_shapes
: g
"conv2d_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7£
 conv2d_1/ActivityRegularizer/mulMul+conv2d_1/ActivityRegularizer/mul/x:output:0,conv2d_1/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: m
"conv2d_1/ActivityRegularizer/ShapeShapeconv2d_1/Relu:activations:0*
T0*
_output_shapes
:z
0conv2d_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv2d_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv2d_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*conv2d_1/ActivityRegularizer/strided_sliceStridedSlice+conv2d_1/ActivityRegularizer/Shape:output:09conv2d_1/ActivityRegularizer/strided_slice/stack:output:0;conv2d_1/ActivityRegularizer/strided_slice/stack_1:output:0;conv2d_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
!conv2d_1/ActivityRegularizer/CastCast3conv2d_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Э
$conv2d_1/ActivityRegularizer/truedivRealDiv$conv2d_1/ActivityRegularizer/mul:z:0%conv2d_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ђ
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€-P@*
ksize
*
paddingVALID*
strides
О
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0≈
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-P@*
paddingSAME*
strides
Д
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-P@j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€-P@k
#conv2d_2/ActivityRegularizer/L2LossL2Lossconv2d_2/Relu:activations:0*
T0*
_output_shapes
: g
"conv2d_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7£
 conv2d_2/ActivityRegularizer/mulMul+conv2d_2/ActivityRegularizer/mul/x:output:0,conv2d_2/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: m
"conv2d_2/ActivityRegularizer/ShapeShapeconv2d_2/Relu:activations:0*
T0*
_output_shapes
:z
0conv2d_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv2d_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv2d_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*conv2d_2/ActivityRegularizer/strided_sliceStridedSlice+conv2d_2/ActivityRegularizer/Shape:output:09conv2d_2/ActivityRegularizer/strided_slice/stack:output:0;conv2d_2/ActivityRegularizer/strided_slice/stack_1:output:0;conv2d_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
!conv2d_2/ActivityRegularizer/CastCast3conv2d_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Э
$conv2d_2/ActivityRegularizer/truedivRealDiv$conv2d_2/ActivityRegularizer/mul:z:0%conv2d_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ђ
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€(@*
ksize
*
paddingVALID*
strides
З
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	@А*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:i
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          e
dense/Tensordot/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ”
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ж
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : і
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Л
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:£
dense/Tensordot/transpose	Transpose max_pooling2d_2/MaxPool:output:0dense/Tensordot/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€(@Ь
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Э
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:А_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ъ
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€(А
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0У
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€(Аe

dense/ReluReludense/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€(Аe
 dense/ActivityRegularizer/L2LossL2Lossdense/Relu:activations:0*
T0*
_output_shapes
: d
dense/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7Ъ
dense/ActivityRegularizer/mulMul(dense/ActivityRegularizer/mul/x:output:0)dense/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: g
dense/ActivityRegularizer/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskИ
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ф
!dense/ActivityRegularizer/truedivRealDiv!dense/ActivityRegularizer/mul:z:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Л
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes
:	А *
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:k
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:†
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*0
_output_shapes
:€€€€€€€€€(АҐ
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ґ
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Я
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€( В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€( h
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€( i
"dense_1/ActivityRegularizer/L2LossL2Lossdense_1/Relu:activations:0*
T0*
_output_shapes
: f
!dense_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7†
dense_1/ActivityRegularizer/mulMul*dense_1/ActivityRegularizer/mul/x:output:0+dense_1/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: k
!dense_1/ActivityRegularizer/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:y
/dense_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)dense_1/ActivityRegularizer/strided_sliceStridedSlice*dense_1/ActivityRegularizer/Shape:output:08dense_1/ActivityRegularizer/strided_slice/stack:output:0:dense_1/ActivityRegularizer/strided_slice/stack_1:output:0:dense_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 dense_1/ActivityRegularizer/CastCast2dense_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ъ
#dense_1/ActivityRegularizer/truedivRealDiv#dense_1/ActivityRegularizer/mul:z:0$dense_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: К
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:k
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          a
dense_2/Tensordot/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:°
dense_2/Tensordot/transpose	Transposedense_1/Relu:activations:0!dense_2/Tensordot/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€( Ґ
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ґ
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€c
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Я
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€(В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ш
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(h
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(i
"dense_2/ActivityRegularizer/L2LossL2Lossdense_2/Relu:activations:0*
T0*
_output_shapes
: f
!dense_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7†
dense_2/ActivityRegularizer/mulMul*dense_2/ActivityRegularizer/mul/x:output:0+dense_2/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: k
!dense_2/ActivityRegularizer/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:y
/dense_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)dense_2/ActivityRegularizer/strided_sliceStridedSlice*dense_2/ActivityRegularizer/Shape:output:08dense_2/ActivityRegularizer/strided_slice/stack:output:0:dense_2/ActivityRegularizer/strided_slice/stack_1:output:0:dense_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 dense_2/ActivityRegularizer/CastCast2dense_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ъ
#dense_2/ActivityRegularizer/truedivRealDiv#dense_2/ActivityRegularizer/mul:z:0$dense_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  Б
flatten/ReshapeReshapedense_2/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :†
concatenate/concatConcatV2flatten/Reshape:output:0inputs_1 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ЅЕ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	Ѕ*
dtype0О
dense_3/MatMulMatMulconcatenate/concat:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€g
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€f

Identity_1Identity&conv2d/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(conv2d_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_3Identity(conv2d_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_5Identity'dense_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_6Identity'dense_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: Ф
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€іј:€€€€€€€€€: : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:[ W
1
_output_shapes
:€€€€€€€€€іј
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1
Л
щ
@__inference_conv2d_layer_call_and_return_conditional_losses_5954

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іј@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іј@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€іј@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іј@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€іј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€іј
 
_user_specified_nameinputs
…
ш
?__inference_dense_layer_call_and_return_conditional_losses_7469

inputs4
!tensordot_readvariableop_resource:	@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@А*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:}
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€(@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Л
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:АY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:И
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€(Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Б
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€(АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€(Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€(Аz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€(@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€(@
 
_user_specified_nameinputs
»	
у
A__inference_dense_3_layer_call_and_return_conditional_losses_6183

inputs1
matmul_readvariableop_resource:	Ѕ-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ѕ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Ѕ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€Ѕ
 
_user_specified_nameinputs
∞
H
,__inference_max_pooling2d_layer_call_fn_7331

inputs
identity’
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_5867Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
э
Д
$__inference_model_layer_call_fn_6883
inputs_0
inputs_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:	@А
	unknown_6:	А
	unknown_7:	А 
	unknown_8: 
	unknown_9: 

unknown_10:

unknown_11:	Ѕ

unknown_12:
identityИҐStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
	2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€: : : : : : *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_6196o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€іј:€€€€€€€€€: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:€€€€€€€€€іј
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1
є’
÷
?__inference_model_layer_call_and_return_conditional_losses_7295
inputs_0
inputs_1?
%conv2d_conv2d_readvariableop_resource:@4
&conv2d_biasadd_readvariableop_resource:@A
'conv2d_1_conv2d_readvariableop_resource:@@6
(conv2d_1_biasadd_readvariableop_resource:@A
'conv2d_2_conv2d_readvariableop_resource:@@6
(conv2d_2_biasadd_readvariableop_resource:@:
'dense_tensordot_readvariableop_resource:	@А4
%dense_biasadd_readvariableop_resource:	А<
)dense_1_tensordot_readvariableop_resource:	А 5
'dense_1_biasadd_readvariableop_resource: ;
)dense_2_tensordot_readvariableop_resource: 5
'dense_2_biasadd_readvariableop_resource:9
&dense_3_matmul_readvariableop_resource:	Ѕ5
'dense_3_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6ИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOpҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐdense/BiasAdd/ReadVariableOpҐdense/Tensordot/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐ dense_1/Tensordot/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐ dense_2/Tensordot/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpК
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ђ
conv2d/Conv2DConv2Dinputs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іј@*
paddingSAME*
strides
А
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іј@h
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€іј@g
!conv2d/ActivityRegularizer/L2LossL2Lossconv2d/Relu:activations:0*
T0*
_output_shapes
: e
 conv2d/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7Э
conv2d/ActivityRegularizer/mulMul)conv2d/ActivityRegularizer/mul/x:output:0*conv2d/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: i
 conv2d/ActivityRegularizer/ShapeShapeconv2d/Relu:activations:0*
T0*
_output_shapes
:x
.conv2d/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0conv2d/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0conv2d/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(conv2d/ActivityRegularizer/strided_sliceStridedSlice)conv2d/ActivityRegularizer/Shape:output:07conv2d/ActivityRegularizer/strided_slice/stack:output:09conv2d/ActivityRegularizer/strided_slice/stack_1:output:09conv2d/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskК
conv2d/ActivityRegularizer/CastCast1conv2d/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ч
"conv2d/ActivityRegularizer/truedivRealDiv"conv2d/ActivityRegularizer/mul:z:0#conv2d/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ©
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*0
_output_shapes
:€€€€€€€€€Z†@*
ksize
*
paddingVALID*
strides
О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ƒ
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@*
paddingSAME*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Щ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@k
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@k
#conv2d_1/ActivityRegularizer/L2LossL2Lossconv2d_1/Relu:activations:0*
T0*
_output_shapes
: g
"conv2d_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7£
 conv2d_1/ActivityRegularizer/mulMul+conv2d_1/ActivityRegularizer/mul/x:output:0,conv2d_1/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: m
"conv2d_1/ActivityRegularizer/ShapeShapeconv2d_1/Relu:activations:0*
T0*
_output_shapes
:z
0conv2d_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv2d_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv2d_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*conv2d_1/ActivityRegularizer/strided_sliceStridedSlice+conv2d_1/ActivityRegularizer/Shape:output:09conv2d_1/ActivityRegularizer/strided_slice/stack:output:0;conv2d_1/ActivityRegularizer/strided_slice/stack_1:output:0;conv2d_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
!conv2d_1/ActivityRegularizer/CastCast3conv2d_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Э
$conv2d_1/ActivityRegularizer/truedivRealDiv$conv2d_1/ActivityRegularizer/mul:z:0%conv2d_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ђ
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€-P@*
ksize
*
paddingVALID*
strides
О
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0≈
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-P@*
paddingSAME*
strides
Д
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-P@j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€-P@k
#conv2d_2/ActivityRegularizer/L2LossL2Lossconv2d_2/Relu:activations:0*
T0*
_output_shapes
: g
"conv2d_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7£
 conv2d_2/ActivityRegularizer/mulMul+conv2d_2/ActivityRegularizer/mul/x:output:0,conv2d_2/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: m
"conv2d_2/ActivityRegularizer/ShapeShapeconv2d_2/Relu:activations:0*
T0*
_output_shapes
:z
0conv2d_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv2d_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv2d_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*conv2d_2/ActivityRegularizer/strided_sliceStridedSlice+conv2d_2/ActivityRegularizer/Shape:output:09conv2d_2/ActivityRegularizer/strided_slice/stack:output:0;conv2d_2/ActivityRegularizer/strided_slice/stack_1:output:0;conv2d_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
!conv2d_2/ActivityRegularizer/CastCast3conv2d_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Э
$conv2d_2/ActivityRegularizer/truedivRealDiv$conv2d_2/ActivityRegularizer/mul:z:0%conv2d_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ђ
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€(@*
ksize
*
paddingVALID*
strides
З
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	@А*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:i
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          e
dense/Tensordot/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ”
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ж
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : і
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Л
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:£
dense/Tensordot/transpose	Transpose max_pooling2d_2/MaxPool:output:0dense/Tensordot/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€(@Ь
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Э
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:А_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ъ
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€(А
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0У
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€(Аe

dense/ReluReludense/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€(Аe
 dense/ActivityRegularizer/L2LossL2Lossdense/Relu:activations:0*
T0*
_output_shapes
: d
dense/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7Ъ
dense/ActivityRegularizer/mulMul(dense/ActivityRegularizer/mul/x:output:0)dense/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: g
dense/ActivityRegularizer/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskИ
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ф
!dense/ActivityRegularizer/truedivRealDiv!dense/ActivityRegularizer/mul:z:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Л
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes
:	А *
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:k
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:†
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*0
_output_shapes
:€€€€€€€€€(АҐ
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ґ
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Я
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€( В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€( h
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€( i
"dense_1/ActivityRegularizer/L2LossL2Lossdense_1/Relu:activations:0*
T0*
_output_shapes
: f
!dense_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7†
dense_1/ActivityRegularizer/mulMul*dense_1/ActivityRegularizer/mul/x:output:0+dense_1/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: k
!dense_1/ActivityRegularizer/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:y
/dense_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)dense_1/ActivityRegularizer/strided_sliceStridedSlice*dense_1/ActivityRegularizer/Shape:output:08dense_1/ActivityRegularizer/strided_slice/stack:output:0:dense_1/ActivityRegularizer/strided_slice/stack_1:output:0:dense_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 dense_1/ActivityRegularizer/CastCast2dense_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ъ
#dense_1/ActivityRegularizer/truedivRealDiv#dense_1/ActivityRegularizer/mul:z:0$dense_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: К
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:k
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          a
dense_2/Tensordot/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Љ
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:°
dense_2/Tensordot/transpose	Transposedense_1/Relu:activations:0!dense_2/Tensordot/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€( Ґ
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ґ
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€c
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Я
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€(В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ш
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(h
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(i
"dense_2/ActivityRegularizer/L2LossL2Lossdense_2/Relu:activations:0*
T0*
_output_shapes
: f
!dense_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7†
dense_2/ActivityRegularizer/mulMul*dense_2/ActivityRegularizer/mul/x:output:0+dense_2/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: k
!dense_2/ActivityRegularizer/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:y
/dense_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)dense_2/ActivityRegularizer/strided_sliceStridedSlice*dense_2/ActivityRegularizer/Shape:output:08dense_2/ActivityRegularizer/strided_slice/stack:output:0:dense_2/ActivityRegularizer/strided_slice/stack_1:output:0:dense_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 dense_2/ActivityRegularizer/CastCast2dense_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ъ
#dense_2/ActivityRegularizer/truedivRealDiv#dense_2/ActivityRegularizer/mul:z:0$dense_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  Б
flatten/ReshapeReshapedense_2/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :†
concatenate/concatConcatV2flatten/Reshape:output:0inputs_1 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ЅЕ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	Ѕ*
dtype0О
dense_3/MatMulMatMulconcatenate/concat:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€g
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€f

Identity_1Identity&conv2d/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(conv2d_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_3Identity(conv2d_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_5Identity'dense_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_6Identity'dense_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: Ф
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€іј:€€€€€€€€€: : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:[ W
1
_output_shapes
:€€€€€€€€€іј
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1
і
J
.__inference_max_pooling2d_1_layer_call_fn_7372

inputs
identity„
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5887Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
є
…
D__inference_conv2d_layer_call_and_return_all_conditional_losses_7315

inputs!
unknown:@
	unknown_0:@
identity

identity_1ИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іј@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_5954†
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *5
f0R.
,__inference_conv2d_activity_regularizer_5858y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€іј@X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€іј: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€іј
 
_user_specified_nameinputs
ыб
ь
__inference__wrapped_model_5850
input_1
input_2E
+model_conv2d_conv2d_readvariableop_resource:@:
,model_conv2d_biasadd_readvariableop_resource:@G
-model_conv2d_1_conv2d_readvariableop_resource:@@<
.model_conv2d_1_biasadd_readvariableop_resource:@G
-model_conv2d_2_conv2d_readvariableop_resource:@@<
.model_conv2d_2_biasadd_readvariableop_resource:@@
-model_dense_tensordot_readvariableop_resource:	@А:
+model_dense_biasadd_readvariableop_resource:	АB
/model_dense_1_tensordot_readvariableop_resource:	А ;
-model_dense_1_biasadd_readvariableop_resource: A
/model_dense_2_tensordot_readvariableop_resource: ;
-model_dense_2_biasadd_readvariableop_resource:?
,model_dense_3_matmul_readvariableop_resource:	Ѕ;
-model_dense_3_biasadd_readvariableop_resource:
identityИҐ#model/conv2d/BiasAdd/ReadVariableOpҐ"model/conv2d/Conv2D/ReadVariableOpҐ%model/conv2d_1/BiasAdd/ReadVariableOpҐ$model/conv2d_1/Conv2D/ReadVariableOpҐ%model/conv2d_2/BiasAdd/ReadVariableOpҐ$model/conv2d_2/Conv2D/ReadVariableOpҐ"model/dense/BiasAdd/ReadVariableOpҐ$model/dense/Tensordot/ReadVariableOpҐ$model/dense_1/BiasAdd/ReadVariableOpҐ&model/dense_1/Tensordot/ReadVariableOpҐ$model/dense_2/BiasAdd/ReadVariableOpҐ&model/dense_2/Tensordot/ReadVariableOpҐ$model/dense_3/BiasAdd/ReadVariableOpҐ#model/dense_3/MatMul/ReadVariableOpЦ
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ґ
model/conv2d/Conv2DConv2Dinput_1*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іј@*
paddingSAME*
strides
М
#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¶
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€іј@t
model/conv2d/ReluRelumodel/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€іј@s
'model/conv2d/ActivityRegularizer/L2LossL2Lossmodel/conv2d/Relu:activations:0*
T0*
_output_shapes
: k
&model/conv2d/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7ѓ
$model/conv2d/ActivityRegularizer/mulMul/model/conv2d/ActivityRegularizer/mul/x:output:00model/conv2d/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: u
&model/conv2d/ActivityRegularizer/ShapeShapemodel/conv2d/Relu:activations:0*
T0*
_output_shapes
:~
4model/conv2d/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6model/conv2d/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6model/conv2d/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
.model/conv2d/ActivityRegularizer/strided_sliceStridedSlice/model/conv2d/ActivityRegularizer/Shape:output:0=model/conv2d/ActivityRegularizer/strided_slice/stack:output:0?model/conv2d/ActivityRegularizer/strided_slice/stack_1:output:0?model/conv2d/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЦ
%model/conv2d/ActivityRegularizer/CastCast7model/conv2d/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ©
(model/conv2d/ActivityRegularizer/truedivRealDiv(model/conv2d/ActivityRegularizer/mul:z:0)model/conv2d/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: µ
model/max_pooling2d/MaxPoolMaxPoolmodel/conv2d/Relu:activations:0*0
_output_shapes
:€€€€€€€€€Z†@*
ksize
*
paddingVALID*
strides
Ъ
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0÷
model/conv2d_1/Conv2DConv2D$model/max_pooling2d/MaxPool:output:0,model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@*
paddingSAME*
strides
Р
%model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ђ
model/conv2d_1/BiasAddBiasAddmodel/conv2d_1/Conv2D:output:0-model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@w
model/conv2d_1/ReluRelumodel/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Z†@w
)model/conv2d_1/ActivityRegularizer/L2LossL2Loss!model/conv2d_1/Relu:activations:0*
T0*
_output_shapes
: m
(model/conv2d_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7µ
&model/conv2d_1/ActivityRegularizer/mulMul1model/conv2d_1/ActivityRegularizer/mul/x:output:02model/conv2d_1/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: y
(model/conv2d_1/ActivityRegularizer/ShapeShape!model/conv2d_1/Relu:activations:0*
T0*
_output_shapes
:А
6model/conv2d_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: В
8model/conv2d_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8model/conv2d_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
0model/conv2d_1/ActivityRegularizer/strided_sliceStridedSlice1model/conv2d_1/ActivityRegularizer/Shape:output:0?model/conv2d_1/ActivityRegularizer/strided_slice/stack:output:0Amodel/conv2d_1/ActivityRegularizer/strided_slice/stack_1:output:0Amodel/conv2d_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЪ
'model/conv2d_1/ActivityRegularizer/CastCast9model/conv2d_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ѓ
*model/conv2d_1/ActivityRegularizer/truedivRealDiv*model/conv2d_1/ActivityRegularizer/mul:z:0+model/conv2d_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Є
model/max_pooling2d_1/MaxPoolMaxPool!model/conv2d_1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€-P@*
ksize
*
paddingVALID*
strides
Ъ
$model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0„
model/conv2d_2/Conv2DConv2D&model/max_pooling2d_1/MaxPool:output:0,model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-P@*
paddingSAME*
strides
Р
%model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0™
model/conv2d_2/BiasAddBiasAddmodel/conv2d_2/Conv2D:output:0-model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-P@v
model/conv2d_2/ReluRelumodel/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€-P@w
)model/conv2d_2/ActivityRegularizer/L2LossL2Loss!model/conv2d_2/Relu:activations:0*
T0*
_output_shapes
: m
(model/conv2d_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7µ
&model/conv2d_2/ActivityRegularizer/mulMul1model/conv2d_2/ActivityRegularizer/mul/x:output:02model/conv2d_2/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: y
(model/conv2d_2/ActivityRegularizer/ShapeShape!model/conv2d_2/Relu:activations:0*
T0*
_output_shapes
:А
6model/conv2d_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: В
8model/conv2d_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8model/conv2d_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
0model/conv2d_2/ActivityRegularizer/strided_sliceStridedSlice1model/conv2d_2/ActivityRegularizer/Shape:output:0?model/conv2d_2/ActivityRegularizer/strided_slice/stack:output:0Amodel/conv2d_2/ActivityRegularizer/strided_slice/stack_1:output:0Amodel/conv2d_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЪ
'model/conv2d_2/ActivityRegularizer/CastCast9model/conv2d_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ѓ
*model/conv2d_2/ActivityRegularizer/truedivRealDiv*model/conv2d_2/ActivityRegularizer/mul:z:0+model/conv2d_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Є
model/max_pooling2d_2/MaxPoolMaxPool!model/conv2d_2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€(@*
ksize
*
paddingVALID*
strides
У
$model/dense/Tensordot/ReadVariableOpReadVariableOp-model_dense_tensordot_readvariableop_resource*
_output_shapes
:	@А*
dtype0d
model/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:o
model/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          q
model/dense/Tensordot/ShapeShape&model/max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:e
#model/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : л
model/dense/Tensordot/GatherV2GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/free:output:0,model/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
%model/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
 model/dense/Tensordot/GatherV2_1GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/axes:output:0.model/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
model/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Т
model/dense/Tensordot/ProdProd'model/dense/Tensordot/GatherV2:output:0$model/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: g
model/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense/Tensordot/Prod_1Prod)model/dense/Tensordot/GatherV2_1:output:0&model/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: c
!model/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ћ
model/dense/Tensordot/concatConcatV2#model/dense/Tensordot/free:output:0#model/dense/Tensordot/axes:output:0*model/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Э
model/dense/Tensordot/stackPack#model/dense/Tensordot/Prod:output:0%model/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:µ
model/dense/Tensordot/transpose	Transpose&model/max_pooling2d_2/MaxPool:output:0%model/dense/Tensordot/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€(@Ѓ
model/dense/Tensordot/ReshapeReshape#model/dense/Tensordot/transpose:y:0$model/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ѓ
model/dense/Tensordot/MatMulMatMul&model/dense/Tensordot/Reshape:output:0,model/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аh
model/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аe
#model/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
model/dense/Tensordot/concat_1ConcatV2'model/dense/Tensordot/GatherV2:output:0&model/dense/Tensordot/Const_2:output:0,model/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ђ
model/dense/TensordotReshape&model/dense/Tensordot/MatMul:product:0'model/dense/Tensordot/concat_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€(АЛ
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0•
model/dense/BiasAddBiasAddmodel/dense/Tensordot:output:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€(Аq
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€(Аq
&model/dense/ActivityRegularizer/L2LossL2Lossmodel/dense/Relu:activations:0*
T0*
_output_shapes
: j
%model/dense/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7ђ
#model/dense/ActivityRegularizer/mulMul.model/dense/ActivityRegularizer/mul/x:output:0/model/dense/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: s
%model/dense/ActivityRegularizer/ShapeShapemodel/dense/Relu:activations:0*
T0*
_output_shapes
:}
3model/dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5model/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5model/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
-model/dense/ActivityRegularizer/strided_sliceStridedSlice.model/dense/ActivityRegularizer/Shape:output:0<model/dense/ActivityRegularizer/strided_slice/stack:output:0>model/dense/ActivityRegularizer/strided_slice/stack_1:output:0>model/dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskФ
$model/dense/ActivityRegularizer/CastCast6model/dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
'model/dense/ActivityRegularizer/truedivRealDiv'model/dense/ActivityRegularizer/mul:z:0(model/dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Ч
&model/dense_1/Tensordot/ReadVariableOpReadVariableOp/model_dense_1_tensordot_readvariableop_resource*
_output_shapes
:	А *
dtype0f
model/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
model/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          k
model/dense_1/Tensordot/ShapeShapemodel/dense/Relu:activations:0*
T0*
_output_shapes
:g
%model/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : у
 model/dense_1/Tensordot/GatherV2GatherV2&model/dense_1/Tensordot/Shape:output:0%model/dense_1/Tensordot/free:output:0.model/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ч
"model/dense_1/Tensordot/GatherV2_1GatherV2&model/dense_1/Tensordot/Shape:output:0%model/dense_1/Tensordot/axes:output:00model/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense_1/Tensordot/ProdProd)model/dense_1/Tensordot/GatherV2:output:0&model/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ю
model/dense_1/Tensordot/Prod_1Prod+model/dense_1/Tensordot/GatherV2_1:output:0(model/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ‘
model/dense_1/Tensordot/concatConcatV2%model/dense_1/Tensordot/free:output:0%model/dense_1/Tensordot/axes:output:0,model/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:£
model/dense_1/Tensordot/stackPack%model/dense_1/Tensordot/Prod:output:0'model/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:≤
!model/dense_1/Tensordot/transpose	Transposemodel/dense/Relu:activations:0'model/dense_1/Tensordot/concat:output:0*
T0*0
_output_shapes
:€€€€€€€€€(Аі
model/dense_1/Tensordot/ReshapeReshape%model/dense_1/Tensordot/transpose:y:0&model/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€і
model/dense_1/Tensordot/MatMulMatMul(model/dense_1/Tensordot/Reshape:output:0.model/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ i
model/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: g
%model/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
 model/dense_1/Tensordot/concat_1ConcatV2)model/dense_1/Tensordot/GatherV2:output:0(model/dense_1/Tensordot/Const_2:output:0.model/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:±
model/dense_1/TensordotReshape(model/dense_1/Tensordot/MatMul:product:0)model/dense_1/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€( О
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0™
model/dense_1/BiasAddBiasAdd model/dense_1/Tensordot:output:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€( t
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€( u
(model/dense_1/ActivityRegularizer/L2LossL2Loss model/dense_1/Relu:activations:0*
T0*
_output_shapes
: l
'model/dense_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7≤
%model/dense_1/ActivityRegularizer/mulMul0model/dense_1/ActivityRegularizer/mul/x:output:01model/dense_1/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: w
'model/dense_1/ActivityRegularizer/ShapeShape model/dense_1/Relu:activations:0*
T0*
_output_shapes
:
5model/dense_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7model/dense_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7model/dense_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ы
/model/dense_1/ActivityRegularizer/strided_sliceStridedSlice0model/dense_1/ActivityRegularizer/Shape:output:0>model/dense_1/ActivityRegularizer/strided_slice/stack:output:0@model/dense_1/ActivityRegularizer/strided_slice/stack_1:output:0@model/dense_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskШ
&model/dense_1/ActivityRegularizer/CastCast8model/dense_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ђ
)model/dense_1/ActivityRegularizer/truedivRealDiv)model/dense_1/ActivityRegularizer/mul:z:0*model/dense_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Ц
&model/dense_2/Tensordot/ReadVariableOpReadVariableOp/model_dense_2_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0f
model/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
model/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          m
model/dense_2/Tensordot/ShapeShape model/dense_1/Relu:activations:0*
T0*
_output_shapes
:g
%model/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : у
 model/dense_2/Tensordot/GatherV2GatherV2&model/dense_2/Tensordot/Shape:output:0%model/dense_2/Tensordot/free:output:0.model/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ч
"model/dense_2/Tensordot/GatherV2_1GatherV2&model/dense_2/Tensordot/Shape:output:0%model/dense_2/Tensordot/axes:output:00model/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense_2/Tensordot/ProdProd)model/dense_2/Tensordot/GatherV2:output:0&model/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ю
model/dense_2/Tensordot/Prod_1Prod+model/dense_2/Tensordot/GatherV2_1:output:0(model/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ‘
model/dense_2/Tensordot/concatConcatV2%model/dense_2/Tensordot/free:output:0%model/dense_2/Tensordot/axes:output:0,model/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:£
model/dense_2/Tensordot/stackPack%model/dense_2/Tensordot/Prod:output:0'model/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:≥
!model/dense_2/Tensordot/transpose	Transpose model/dense_1/Relu:activations:0'model/dense_2/Tensordot/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€( і
model/dense_2/Tensordot/ReshapeReshape%model/dense_2/Tensordot/transpose:y:0&model/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€і
model/dense_2/Tensordot/MatMulMatMul(model/dense_2/Tensordot/Reshape:output:0.model/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€i
model/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:g
%model/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
 model/dense_2/Tensordot/concat_1ConcatV2)model/dense_2/Tensordot/GatherV2:output:0(model/dense_2/Tensordot/Const_2:output:0.model/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:±
model/dense_2/TensordotReshape(model/dense_2/Tensordot/MatMul:product:0)model/dense_2/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€(О
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0™
model/dense_2/BiasAddBiasAdd model/dense_2/Tensordot:output:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(t
model/dense_2/ReluRelumodel/dense_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(u
(model/dense_2/ActivityRegularizer/L2LossL2Loss model/dense_2/Relu:activations:0*
T0*
_output_shapes
: l
'model/dense_2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7≤
%model/dense_2/ActivityRegularizer/mulMul0model/dense_2/ActivityRegularizer/mul/x:output:01model/dense_2/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: w
'model/dense_2/ActivityRegularizer/ShapeShape model/dense_2/Relu:activations:0*
T0*
_output_shapes
:
5model/dense_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7model/dense_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7model/dense_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ы
/model/dense_2/ActivityRegularizer/strided_sliceStridedSlice0model/dense_2/ActivityRegularizer/Shape:output:0>model/dense_2/ActivityRegularizer/strided_slice/stack:output:0@model/dense_2/ActivityRegularizer/strided_slice/stack_1:output:0@model/dense_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskШ
&model/dense_2/ActivityRegularizer/CastCast8model/dense_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ђ
)model/dense_2/ActivityRegularizer/truedivRealDiv)model/dense_2/ActivityRegularizer/mul:z:0*model/dense_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  У
model/flatten/ReshapeReshape model/dense_2/Relu:activations:0model/flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј_
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :±
model/concatenate/concatConcatV2model/flatten/Reshape:output:0input_2&model/concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€ЅС
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource*
_output_shapes
:	Ѕ*
dtype0†
model/dense_3/MatMulMatMul!model/concatenate/concat:output:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€О
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0†
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€m
IdentityIdentitymodel/dense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€и
NoOpNoOp$^model/conv2d/BiasAdd/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp&^model/conv2d_1/BiasAdd/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp&^model/conv2d_2/BiasAdd/ReadVariableOp%^model/conv2d_2/Conv2D/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/Tensordot/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp'^model/dense_1/Tensordot/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp'^model/dense_2/Tensordot/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€іј:€€€€€€€€€: : : : : : : : : : : : : : 2J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2N
%model/conv2d_1/BiasAdd/ReadVariableOp%model/conv2d_1/BiasAdd/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2N
%model/conv2d_2/BiasAdd/ReadVariableOp%model/conv2d_2/BiasAdd/ReadVariableOp2L
$model/conv2d_2/Conv2D/ReadVariableOp$model/conv2d_2/Conv2D/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/Tensordot/ReadVariableOp$model/dense/Tensordot/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2P
&model/dense_1/Tensordot/ReadVariableOp&model/dense_1/Tensordot/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2P
&model/dense_2/Tensordot/ReadVariableOp&model/dense_2/Tensordot/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp:Z V
1
_output_shapes
:€€€€€€€€€іј
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
»	
у
A__inference_dense_3_layer_call_and_return_conditional_losses_7614

inputs1
matmul_readvariableop_resource:	Ѕ-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ѕ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Ѕ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€Ѕ
 
_user_specified_nameinputs
Ѕ
ш
A__inference_dense_2_layer_call_and_return_conditional_losses_6142

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:}
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€( К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0А
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€(X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€(i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€(z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€( : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€( 
 
_user_specified_nameinputs
ч
В
$__inference_model_layer_call_fn_6233
input_1
input_2!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:	@А
	unknown_6:	А
	unknown_7:	А 
	unknown_8: 
	unknown_9: 

unknown_10:

unknown_11:	Ѕ

unknown_12:
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
	2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€: : : : : : *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_6196o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€іј:€€€€€€€€€: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€іј
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
пА
ч
?__inference_model_layer_call_and_return_conditional_losses_6196

inputs
inputs_1%
conv2d_5955:@
conv2d_5957:@'
conv2d_1_5981:@@
conv2d_1_5983:@'
conv2d_2_6007:@@
conv2d_2_6009:@

dense_6053:	@А

dense_6055:	А
dense_1_6098:	А 
dense_1_6100: 
dense_2_6143: 
dense_2_6145:
dense_3_6184:	Ѕ
dense_3_6186:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6ИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallм
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5955conv2d_5957*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іј@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_5954¬
*conv2d/ActivityRegularizer/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *5
f0R.
,__inference_conv2d_activity_regularizer_5858w
 conv2d/ActivityRegularizer/ShapeShape'conv2d/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:x
.conv2d/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0conv2d/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0conv2d/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(conv2d/ActivityRegularizer/strided_sliceStridedSlice)conv2d/ActivityRegularizer/Shape:output:07conv2d/ActivityRegularizer/strided_slice/stack:output:09conv2d/ActivityRegularizer/strided_slice/stack_1:output:09conv2d/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskК
conv2d/ActivityRegularizer/CastCast1conv2d/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
"conv2d/ActivityRegularizer/truedivRealDiv3conv2d/ActivityRegularizer/PartitionedCall:output:0#conv2d/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: к
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Z†@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_5867У
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_5981conv2d_1_5983*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Z†@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5980»
,conv2d_1/ActivityRegularizer/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *7
f2R0
.__inference_conv2d_1_activity_regularizer_5878{
"conv2d_1/ActivityRegularizer/ShapeShape)conv2d_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0conv2d_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv2d_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv2d_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*conv2d_1/ActivityRegularizer/strided_sliceStridedSlice+conv2d_1/ActivityRegularizer/Shape:output:09conv2d_1/ActivityRegularizer/strided_slice/stack:output:0;conv2d_1/ActivityRegularizer/strided_slice/stack_1:output:0;conv2d_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
!conv2d_1/ActivityRegularizer/CastCast3conv2d_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ѓ
$conv2d_1/ActivityRegularizer/truedivRealDiv5conv2d_1/ActivityRegularizer/PartitionedCall:output:0%conv2d_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: п
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-P@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5887Ф
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_6007conv2d_2_6009*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-P@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_6006»
,conv2d_2/ActivityRegularizer/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *7
f2R0
.__inference_conv2d_2_activity_regularizer_5898{
"conv2d_2/ActivityRegularizer/ShapeShape)conv2d_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0conv2d_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv2d_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv2d_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*conv2d_2/ActivityRegularizer/strided_sliceStridedSlice+conv2d_2/ActivityRegularizer/Shape:output:09conv2d_2/ActivityRegularizer/strided_slice/stack:output:0;conv2d_2/ActivityRegularizer/strided_slice/stack_1:output:0;conv2d_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
!conv2d_2/ActivityRegularizer/CastCast3conv2d_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ѓ
$conv2d_2/ActivityRegularizer/truedivRealDiv5conv2d_2/ActivityRegularizer/PartitionedCall:output:0%conv2d_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: п
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5907Й
dense/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0
dense_6053
dense_6055*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€(А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_6052њ
)dense/ActivityRegularizer/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *4
f/R-
+__inference_dense_activity_regularizer_5918u
dense/ActivityRegularizer/ShapeShape&dense/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskИ
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: •
!dense/ActivityRegularizer/truedivRealDiv2dense/ActivityRegularizer/PartitionedCall:output:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: О
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6098dense_1_6100*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€( *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_6097≈
+dense_1/ActivityRegularizer/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *6
f1R/
-__inference_dense_1_activity_regularizer_5926y
!dense_1/ActivityRegularizer/ShapeShape(dense_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)dense_1/ActivityRegularizer/strided_sliceStridedSlice*dense_1/ActivityRegularizer/Shape:output:08dense_1/ActivityRegularizer/strided_slice/stack:output:0:dense_1/ActivityRegularizer/strided_slice/stack_1:output:0:dense_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 dense_1/ActivityRegularizer/CastCast2dense_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ђ
#dense_1/ActivityRegularizer/truedivRealDiv4dense_1/ActivityRegularizer/PartitionedCall:output:0$dense_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Р
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6143dense_2_6145*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6142≈
+dense_2/ActivityRegularizer/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *6
f1R/
-__inference_dense_2_activity_regularizer_5934y
!dense_2/ActivityRegularizer/ShapeShape(dense_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)dense_2/ActivityRegularizer/strided_sliceStridedSlice*dense_2/ActivityRegularizer/Shape:output:08dense_2/ActivityRegularizer/strided_slice/stack:output:0:dense_2/ActivityRegularizer/strided_slice/stack_1:output:0:dense_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 dense_2/ActivityRegularizer/CastCast2dense_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ђ
#dense_2/ActivityRegularizer/truedivRealDiv4dense_2/ActivityRegularizer/PartitionedCall:output:0$dense_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: „
flatten/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_6162в
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Ѕ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_6171Д
dense_3/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_3_6184dense_3_6186*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_6183w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€f

Identity_1Identity&conv2d/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(conv2d_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_3Identity(conv2d_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_5Identity'dense_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_6Identity'dense_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ≥
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€іј:€€€€€€€€€: : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€іј
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ђ
¬
E__inference_dense_2_layer_call_and_return_all_conditional_losses_7540

inputs
unknown: 
	unknown_0:
identity

identity_1ИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6142°
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *6
f1R/
-__inference_dense_2_activity_regularizer_5934w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€(X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€( : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€( 
 
_user_specified_nameinputs
©
B
&__inference_flatten_layer_call_fn_7576

inputs
identity≠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_6162a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€(:W S
/
_output_shapes
:€€€€€€€€€(
 
_user_specified_nameinputs
√
]
A__inference_flatten_layer_call_and_return_conditional_losses_7582

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€(:W S
/
_output_shapes
:€€€€€€€€€(
 
_user_specified_nameinputs
ї
Ћ
F__inference_conv2d_1_layer_call_and_return_all_conditional_losses_7356

inputs!
unknown:@@
	unknown_0:@
identity

identity_1ИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Z†@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5980Ґ
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *7
f2R0
.__inference_conv2d_1_activity_regularizer_5878x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Z†@X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€Z†@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€Z†@
 
_user_specified_nameinputs
сА
ч
?__inference_model_layer_call_and_return_conditional_losses_6805
input_1
input_2%
conv2d_6710:@
conv2d_6712:@'
conv2d_1_6724:@@
conv2d_1_6726:@'
conv2d_2_6738:@@
conv2d_2_6740:@

dense_6752:	@А

dense_6754:	А
dense_1_6765:	А 
dense_1_6767: 
dense_2_6778: 
dense_2_6780:
dense_3_6793:	Ѕ
dense_3_6795:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6ИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallн
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_6710conv2d_6712*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€іј@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_5954¬
*conv2d/ActivityRegularizer/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *5
f0R.
,__inference_conv2d_activity_regularizer_5858w
 conv2d/ActivityRegularizer/ShapeShape'conv2d/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:x
.conv2d/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0conv2d/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0conv2d/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(conv2d/ActivityRegularizer/strided_sliceStridedSlice)conv2d/ActivityRegularizer/Shape:output:07conv2d/ActivityRegularizer/strided_slice/stack:output:09conv2d/ActivityRegularizer/strided_slice/stack_1:output:09conv2d/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskК
conv2d/ActivityRegularizer/CastCast1conv2d/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
"conv2d/ActivityRegularizer/truedivRealDiv3conv2d/ActivityRegularizer/PartitionedCall:output:0#conv2d/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: к
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Z†@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_5867У
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_6724conv2d_1_6726*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€Z†@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5980»
,conv2d_1/ActivityRegularizer/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *7
f2R0
.__inference_conv2d_1_activity_regularizer_5878{
"conv2d_1/ActivityRegularizer/ShapeShape)conv2d_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0conv2d_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv2d_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv2d_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*conv2d_1/ActivityRegularizer/strided_sliceStridedSlice+conv2d_1/ActivityRegularizer/Shape:output:09conv2d_1/ActivityRegularizer/strided_slice/stack:output:0;conv2d_1/ActivityRegularizer/strided_slice/stack_1:output:0;conv2d_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
!conv2d_1/ActivityRegularizer/CastCast3conv2d_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ѓ
$conv2d_1/ActivityRegularizer/truedivRealDiv5conv2d_1/ActivityRegularizer/PartitionedCall:output:0%conv2d_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: п
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-P@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5887Ф
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_6738conv2d_2_6740*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-P@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_6006»
,conv2d_2/ActivityRegularizer/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *7
f2R0
.__inference_conv2d_2_activity_regularizer_5898{
"conv2d_2/ActivityRegularizer/ShapeShape)conv2d_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0conv2d_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv2d_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv2d_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*conv2d_2/ActivityRegularizer/strided_sliceStridedSlice+conv2d_2/ActivityRegularizer/Shape:output:09conv2d_2/ActivityRegularizer/strided_slice/stack:output:0;conv2d_2/ActivityRegularizer/strided_slice/stack_1:output:0;conv2d_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
!conv2d_2/ActivityRegularizer/CastCast3conv2d_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ѓ
$conv2d_2/ActivityRegularizer/truedivRealDiv5conv2d_2/ActivityRegularizer/PartitionedCall:output:0%conv2d_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: п
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5907Й
dense/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0
dense_6752
dense_6754*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€(А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_6052њ
)dense/ActivityRegularizer/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *4
f/R-
+__inference_dense_activity_regularizer_5918u
dense/ActivityRegularizer/ShapeShape&dense/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskИ
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: •
!dense/ActivityRegularizer/truedivRealDiv2dense/ActivityRegularizer/PartitionedCall:output:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: О
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6765dense_1_6767*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€( *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_6097≈
+dense_1/ActivityRegularizer/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *6
f1R/
-__inference_dense_1_activity_regularizer_5926y
!dense_1/ActivityRegularizer/ShapeShape(dense_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)dense_1/ActivityRegularizer/strided_sliceStridedSlice*dense_1/ActivityRegularizer/Shape:output:08dense_1/ActivityRegularizer/strided_slice/stack:output:0:dense_1/ActivityRegularizer/strided_slice/stack_1:output:0:dense_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 dense_1/ActivityRegularizer/CastCast2dense_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ђ
#dense_1/ActivityRegularizer/truedivRealDiv4dense_1/ActivityRegularizer/PartitionedCall:output:0$dense_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: Р
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6778dense_2_6780*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6142≈
+dense_2/ActivityRegularizer/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *6
f1R/
-__inference_dense_2_activity_regularizer_5934y
!dense_2/ActivityRegularizer/ShapeShape(dense_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
)dense_2/ActivityRegularizer/strided_sliceStridedSlice*dense_2/ActivityRegularizer/Shape:output:08dense_2/ActivityRegularizer/strided_slice/stack:output:0:dense_2/ActivityRegularizer/strided_slice/stack_1:output:0:dense_2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
 dense_2/ActivityRegularizer/CastCast2dense_2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ђ
#dense_2/ActivityRegularizer/truedivRealDiv4dense_2/ActivityRegularizer/PartitionedCall:output:0$dense_2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: „
flatten/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_6162б
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0input_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Ѕ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_6171Д
dense_3/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_3_6793dense_3_6795*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_6183w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€f

Identity_1Identity&conv2d/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(conv2d_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_3Identity(conv2d_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_5Identity'dense_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_6Identity'dense_2/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ≥
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€іј:€€€€€€€€€: : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€іј
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
…
ш
?__inference_dense_layer_call_and_return_conditional_losses_6052

inputs4
!tensordot_readvariableop_resource:	@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@А*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:}
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€(@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Л
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:АY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:И
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€(Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Б
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€(АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€(Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€(Аz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€(@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€(@
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5887

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5907

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ц
E
.__inference_conv2d_2_activity_regularizer_5898
x
identity4
L2LossL2Lossx*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ђ≈І7L
mulMulmul/x:output:0L2Loss:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
ж
Ь
'__inference_conv2d_2_layer_call_fn_7386

inputs!
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-P@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_6006w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€-P@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€-P@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€-P@
 
_user_specified_nameinputs
э
Д
$__inference_model_layer_call_fn_6923
inputs_0
inputs_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:	@А
	unknown_6:	А
	unknown_7:	А 
	unknown_8: 
	unknown_9: 

unknown_10:

unknown_11:	Ѕ

unknown_12:
identityИҐStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
	2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€: : : : : : *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_6530o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€іј:€€€€€€€€€: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:€€€€€€€€€іј
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1"Ж
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*с
serving_defaultЁ
E
input_1:
serving_default_input_1:0€€€€€€€€€іј
;
input_20
serving_default_input_2:0€€€€€€€€€;
dense_30
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:ря
”
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer-12
layer_with_weights-6
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ё
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
  _jit_compiled_convolution_op"
_tf_keras_layer
•
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op"
_tf_keras_layer
•
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias
 >_jit_compiled_convolution_op"
_tf_keras_layer
•
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias"
_tf_keras_layer
ї
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias"
_tf_keras_layer
ї
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias"
_tf_keras_layer
•
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
•
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

okernel
pbias"
_tf_keras_layer
Ж
0
1
-2
.3
<4
=5
K6
L7
S8
T9
[10
\11
o12
p13"
trackable_list_wrapper
Ж
0
1
-2
.3
<4
=5
K6
L7
S8
T9
[10
\11
o12
p13"
trackable_list_wrapper
 "
trackable_list_wrapper
 
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
≈
vtrace_0
wtrace_1
xtrace_2
ytrace_32Џ
$__inference_model_layer_call_fn_6233
$__inference_model_layer_call_fn_6883
$__inference_model_layer_call_fn_6923
$__inference_model_layer_call_fn_6607њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zvtrace_0zwtrace_1zxtrace_2zytrace_3
±
ztrace_0
{trace_1
|trace_2
}trace_32∆
?__inference_model_layer_call_and_return_conditional_losses_7109
?__inference_model_layer_call_and_return_conditional_losses_7295
?__inference_model_layer_call_and_return_conditional_losses_6706
?__inference_model_layer_call_and_return_conditional_losses_6805њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zztrace_0z{trace_1z|trace_2z}trace_3
”B–
__inference__wrapped_model_5850input_1input_2"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°
~
_variables
_iterations
А_learning_rate
Б_index_dict
В
_momentums
Г_velocities
Д_update_step_xla"
experimentalOptimizer
-
Еserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
—
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
Лactivity_regularizer_fn
*&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
л
Нtrace_02ћ
%__inference_conv2d_layer_call_fn_7304Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zНtrace_0
К
Оtrace_02л
D__inference_conv2d_layer_call_and_return_all_conditional_losses_7315Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zОtrace_0
':%@2conv2d/kernel
:@2conv2d/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
т
Фtrace_02”
,__inference_max_pooling2d_layer_call_fn_7331Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zФtrace_0
Н
Хtrace_02о
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7336Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zХtrace_0
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
—
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
Ыactivity_regularizer_fn
*,&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
н
Эtrace_02ќ
'__inference_conv2d_1_layer_call_fn_7345Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЭtrace_0
М
Юtrace_02н
F__inference_conv2d_1_layer_call_and_return_all_conditional_losses_7356Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЮtrace_0
):'@@2conv2d_1/kernel
:@2conv2d_1/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
ф
§trace_02’
.__inference_max_pooling2d_1_layer_call_fn_7372Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z§trace_0
П
•trace_02р
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7377Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z•trace_0
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
—
¶non_trainable_variables
Іlayers
®metrics
 ©layer_regularization_losses
™layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
Ђactivity_regularizer_fn
*;&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
н
≠trace_02ќ
'__inference_conv2d_2_layer_call_fn_7386Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≠trace_0
М
Ѓtrace_02н
F__inference_conv2d_2_layer_call_and_return_all_conditional_losses_7397Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЃtrace_0
):'@@2conv2d_2/kernel
:@2conv2d_2/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
ф
іtrace_02’
.__inference_max_pooling2d_2_layer_call_fn_7413Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zіtrace_0
П
µtrace_02р
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_7418Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zµtrace_0
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
—
ґnon_trainable_variables
Јlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
їactivity_regularizer_fn
*J&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object
к
љtrace_02Ћ
$__inference_dense_layer_call_fn_7427Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zљtrace_0
Й
Њtrace_02к
C__inference_dense_layer_call_and_return_all_conditional_losses_7438Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЊtrace_0
:	@А2dense/kernel
:А2
dense/bias
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
—
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
ƒactivity_regularizer_fn
*R&call_and_return_all_conditional_losses
'≈"call_and_return_conditional_losses"
_generic_user_object
м
∆trace_02Ќ
&__inference_dense_1_layer_call_fn_7478Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∆trace_0
Л
«trace_02м
E__inference_dense_1_layer_call_and_return_all_conditional_losses_7489Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z«trace_0
!:	А 2dense_1/kernel
: 2dense_1/bias
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
—
»non_trainable_variables
…layers
 metrics
 Ћlayer_regularization_losses
ћlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
Ќactivity_regularizer_fn
*Z&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
м
ѕtrace_02Ќ
&__inference_dense_2_layer_call_fn_7529Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѕtrace_0
Л
–trace_02м
E__inference_dense_2_layer_call_and_return_all_conditional_losses_7540Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z–trace_0
 : 2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
—non_trainable_variables
“layers
”metrics
 ‘layer_regularization_losses
’layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
м
÷trace_02Ќ
&__inference_flatten_layer_call_fn_7576Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z÷trace_0
З
„trace_02и
A__inference_flatten_layer_call_and_return_conditional_losses_7582Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z„trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ўnon_trainable_variables
ўlayers
Џmetrics
 џlayer_regularization_losses
№layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
р
Ёtrace_02—
*__inference_concatenate_layer_call_fn_7588Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЁtrace_0
Л
ёtrace_02м
E__inference_concatenate_layer_call_and_return_conditional_losses_7595Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zёtrace_0
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
м
дtrace_02Ќ
&__inference_dense_3_layer_call_fn_7604Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zдtrace_0
З
еtrace_02и
A__inference_dense_3_layer_call_and_return_conditional_losses_7614Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zеtrace_0
!:	Ѕ2dense_3/kernel
:2dense_3/bias
 "
trackable_list_wrapper
Ж
0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
(
ж0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
€Bь
$__inference_model_layer_call_fn_6233input_1input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
$__inference_model_layer_call_fn_6883inputs_0inputs_1"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
$__inference_model_layer_call_fn_6923inputs_0inputs_1"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
$__inference_model_layer_call_fn_6607input_1input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЬBЩ
?__inference_model_layer_call_and_return_conditional_losses_7109inputs_0inputs_1"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЬBЩ
?__inference_model_layer_call_and_return_conditional_losses_7295inputs_0inputs_1"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
?__inference_model_layer_call_and_return_conditional_losses_6706input_1input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
?__inference_model_layer_call_and_return_conditional_losses_6805input_1input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ъ
0
з1
и2
й3
к4
л5
м6
н7
о8
п9
р10
с11
т12
у13
ф14
х15
ц16
ч17
ш18
щ19
ъ20
ы21
ь22
э23
ю24
€25
А26
Б27
В28"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
Ф
з0
й1
л2
н3
п4
с5
у6
х7
ч8
щ9
ы10
э11
€12
Б13"
trackable_list_wrapper
Ф
и0
к1
м2
о3
р4
т5
ф6
ц7
ш8
ъ9
ь10
ю11
А12
В13"
trackable_list_wrapper
њ2Љє
Ѓ≤™
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
–BЌ
"__inference_signature_wrapper_6843input_1input_2"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
щ
Гtrace_02Џ
,__inference_conv2d_activity_regularizer_5858©
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	КzГtrace_0
Ж
Дtrace_02з
@__inference_conv2d_layer_call_and_return_conditional_losses_7326Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zДtrace_0
ўB÷
%__inference_conv2d_layer_call_fn_7304inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_layer_call_and_return_all_conditional_losses_7315inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
аBЁ
,__inference_max_pooling2d_layer_call_fn_7331inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7336inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ы
Еtrace_02№
.__inference_conv2d_1_activity_regularizer_5878©
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	КzЕtrace_0
И
Жtrace_02й
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7367Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЖtrace_0
џBЎ
'__inference_conv2d_1_layer_call_fn_7345inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
F__inference_conv2d_1_layer_call_and_return_all_conditional_losses_7356inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
вBя
.__inference_max_pooling2d_1_layer_call_fn_7372inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7377inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ы
Зtrace_02№
.__inference_conv2d_2_activity_regularizer_5898©
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	КzЗtrace_0
И
Иtrace_02й
B__inference_conv2d_2_layer_call_and_return_conditional_losses_7408Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zИtrace_0
џBЎ
'__inference_conv2d_2_layer_call_fn_7386inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
F__inference_conv2d_2_layer_call_and_return_all_conditional_losses_7397inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
вBя
.__inference_max_pooling2d_2_layer_call_fn_7413inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_7418inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ш
Йtrace_02ў
+__inference_dense_activity_regularizer_5918©
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	КzЙtrace_0
Е
Кtrace_02ж
?__inference_dense_layer_call_and_return_conditional_losses_7469Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zКtrace_0
ЎB’
$__inference_dense_layer_call_fn_7427inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
чBф
C__inference_dense_layer_call_and_return_all_conditional_losses_7438inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ъ
Лtrace_02џ
-__inference_dense_1_activity_regularizer_5926©
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	КzЛtrace_0
З
Мtrace_02и
A__inference_dense_1_layer_call_and_return_conditional_losses_7520Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zМtrace_0
ЏB„
&__inference_dense_1_layer_call_fn_7478inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
E__inference_dense_1_layer_call_and_return_all_conditional_losses_7489inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ъ
Нtrace_02џ
-__inference_dense_2_activity_regularizer_5934©
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	КzНtrace_0
З
Оtrace_02и
A__inference_dense_2_layer_call_and_return_conditional_losses_7571Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zОtrace_0
ЏB„
&__inference_dense_2_layer_call_fn_7529inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
E__inference_dense_2_layer_call_and_return_all_conditional_losses_7540inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ЏB„
&__inference_flatten_layer_call_fn_7576inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
хBт
A__inference_flatten_layer_call_and_return_conditional_losses_7582inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
кBз
*__inference_concatenate_layer_call_fn_7588inputs_0inputs_1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
E__inference_concatenate_layer_call_and_return_conditional_losses_7595inputs_0inputs_1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ЏB„
&__inference_dense_3_layer_call_fn_7604inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
хBт
A__inference_dense_3_layer_call_and_return_conditional_losses_7614inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
П	variables
Р	keras_api

Сtotal

Тcount"
_tf_keras_metric
,:*@2Adam/m/conv2d/kernel
,:*@2Adam/v/conv2d/kernel
:@2Adam/m/conv2d/bias
:@2Adam/v/conv2d/bias
.:,@@2Adam/m/conv2d_1/kernel
.:,@@2Adam/v/conv2d_1/kernel
 :@2Adam/m/conv2d_1/bias
 :@2Adam/v/conv2d_1/bias
.:,@@2Adam/m/conv2d_2/kernel
.:,@@2Adam/v/conv2d_2/kernel
 :@2Adam/m/conv2d_2/bias
 :@2Adam/v/conv2d_2/bias
$:"	@А2Adam/m/dense/kernel
$:"	@А2Adam/v/dense/kernel
:А2Adam/m/dense/bias
:А2Adam/v/dense/bias
&:$	А 2Adam/m/dense_1/kernel
&:$	А 2Adam/v/dense_1/kernel
: 2Adam/m/dense_1/bias
: 2Adam/v/dense_1/bias
%:# 2Adam/m/dense_2/kernel
%:# 2Adam/v/dense_2/kernel
:2Adam/m/dense_2/bias
:2Adam/v/dense_2/bias
&:$	Ѕ2Adam/m/dense_3/kernel
&:$	Ѕ2Adam/v/dense_3/kernel
:2Adam/m/dense_3/bias
:2Adam/v/dense_3/bias
вBя
,__inference_conv2d_activity_regularizer_5858x"©
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	К
фBс
@__inference_conv2d_layer_call_and_return_conditional_losses_7326inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
дBб
.__inference_conv2d_1_activity_regularizer_5878x"©
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	К
цBу
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7367inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
дBб
.__inference_conv2d_2_activity_regularizer_5898x"©
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	К
цBу
B__inference_conv2d_2_layer_call_and_return_conditional_losses_7408inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
бBё
+__inference_dense_activity_regularizer_5918x"©
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	К
уBр
?__inference_dense_layer_call_and_return_conditional_losses_7469inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
гBа
-__inference_dense_1_activity_regularizer_5926x"©
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	К
хBт
A__inference_dense_1_layer_call_and_return_conditional_losses_7520inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
гBа
-__inference_dense_2_activity_regularizer_5934x"©
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	К
хBт
A__inference_dense_2_layer_call_and_return_conditional_losses_7571inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
С0
Т1"
trackable_list_wrapper
.
П	variables"
_generic_user_object
:  (2total
:  (2countЋ
__inference__wrapped_model_5850І-.<=KLST[\opbҐ_
XҐU
SЪP
+К(
input_1€€€€€€€€€іј
!К
input_2€€€€€€€€€
™ "1™.
,
dense_3!К
dense_3€€€€€€€€€÷
E__inference_concatenate_layer_call_and_return_conditional_losses_7595М[ҐX
QҐN
LЪI
#К 
inputs_0€€€€€€€€€ј
"К
inputs_1€€€€€€€€€
™ "-Ґ*
#К 
tensor_0€€€€€€€€€Ѕ
Ъ ∞
*__inference_concatenate_layer_call_fn_7588Б[ҐX
QҐN
LЪI
#К 
inputs_0€€€€€€€€€ј
"К
inputs_1€€€€€€€€€
™ ""К
unknown€€€€€€€€€Ѕa
.__inference_conv2d_1_activity_regularizer_5878/Ґ
Ґ
К	
x
™ "К
unknown ’
F__inference_conv2d_1_layer_call_and_return_all_conditional_losses_7356К-.8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€Z†@
™ "JҐG
+К(
tensor_0€€€€€€€€€Z†@
Ъ
К

tensor_1_0 ї
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7367u-.8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€Z†@
™ "5Ґ2
+К(
tensor_0€€€€€€€€€Z†@
Ъ Х
'__inference_conv2d_1_layer_call_fn_7345j-.8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€Z†@
™ "*К'
unknown€€€€€€€€€Z†@a
.__inference_conv2d_2_activity_regularizer_5898/Ґ
Ґ
К	
x
™ "К
unknown ”
F__inference_conv2d_2_layer_call_and_return_all_conditional_losses_7397И<=7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€-P@
™ "IҐF
*К'
tensor_0€€€€€€€€€-P@
Ъ
К

tensor_1_0 є
B__inference_conv2d_2_layer_call_and_return_conditional_losses_7408s<=7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€-P@
™ "4Ґ1
*К'
tensor_0€€€€€€€€€-P@
Ъ У
'__inference_conv2d_2_layer_call_fn_7386h<=7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€-P@
™ ")К&
unknown€€€€€€€€€-P@_
,__inference_conv2d_activity_regularizer_5858/Ґ
Ґ
К	
x
™ "К
unknown ’
D__inference_conv2d_layer_call_and_return_all_conditional_losses_7315М9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€іј
™ "KҐH
,К)
tensor_0€€€€€€€€€іј@
Ъ
К

tensor_1_0 ї
@__inference_conv2d_layer_call_and_return_conditional_losses_7326w9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€іј
™ "6Ґ3
,К)
tensor_0€€€€€€€€€іј@
Ъ Х
%__inference_conv2d_layer_call_fn_7304l9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€іј
™ "+К(
unknown€€€€€€€€€іј@`
-__inference_dense_1_activity_regularizer_5926/Ґ
Ґ
К	
x
™ "К
unknown ”
E__inference_dense_1_layer_call_and_return_all_conditional_losses_7489ЙST8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€(А
™ "IҐF
*К'
tensor_0€€€€€€€€€( 
Ъ
К

tensor_1_0 є
A__inference_dense_1_layer_call_and_return_conditional_losses_7520tST8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€(А
™ "4Ґ1
*К'
tensor_0€€€€€€€€€( 
Ъ У
&__inference_dense_1_layer_call_fn_7478iST8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€(А
™ ")К&
unknown€€€€€€€€€( `
-__inference_dense_2_activity_regularizer_5934/Ґ
Ґ
К	
x
™ "К
unknown “
E__inference_dense_2_layer_call_and_return_all_conditional_losses_7540И[\7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€( 
™ "IҐF
*К'
tensor_0€€€€€€€€€(
Ъ
К

tensor_1_0 Є
A__inference_dense_2_layer_call_and_return_conditional_losses_7571s[\7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€( 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€(
Ъ Т
&__inference_dense_2_layer_call_fn_7529h[\7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€( 
™ ")К&
unknown€€€€€€€€€(©
A__inference_dense_3_layer_call_and_return_conditional_losses_7614dop0Ґ-
&Ґ#
!К
inputs€€€€€€€€€Ѕ
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Г
&__inference_dense_3_layer_call_fn_7604Yop0Ґ-
&Ґ#
!К
inputs€€€€€€€€€Ѕ
™ "!К
unknown€€€€€€€€€^
+__inference_dense_activity_regularizer_5918/Ґ
Ґ
К	
x
™ "К
unknown —
C__inference_dense_layer_call_and_return_all_conditional_losses_7438ЙKL7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€(@
™ "JҐG
+К(
tensor_0€€€€€€€€€(А
Ъ
К

tensor_1_0 Ј
?__inference_dense_layer_call_and_return_conditional_losses_7469tKL7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€(@
™ "5Ґ2
+К(
tensor_0€€€€€€€€€(А
Ъ С
$__inference_dense_layer_call_fn_7427iKL7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€(@
™ "*К'
unknown€€€€€€€€€(А≠
A__inference_flatten_layer_call_and_return_conditional_losses_7582h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€(
™ "-Ґ*
#К 
tensor_0€€€€€€€€€ј
Ъ З
&__inference_flatten_layer_call_fn_7576]7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€(
™ ""К
unknown€€€€€€€€€ју
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7377•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ќ
.__inference_max_pooling2d_1_layer_call_fn_7372ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€у
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_7418•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ќ
.__inference_max_pooling2d_2_layer_call_fn_7413ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€с
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7336•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ћ
,__inference_max_pooling2d_layer_call_fn_7331ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€п
?__inference_model_layer_call_and_return_conditional_losses_6706Ђ-.<=KLST[\opjҐg
`Ґ]
SЪP
+К(
input_1€€€€€€€€€іј
!К
input_2€€€€€€€€€
p 

 
™ "ђҐ®
"К
tensor_0€€€€€€€€€
БЪ~
К

tensor_1_0 
К

tensor_1_1 
К

tensor_1_2 
К

tensor_1_3 
К

tensor_1_4 
К

tensor_1_5 п
?__inference_model_layer_call_and_return_conditional_losses_6805Ђ-.<=KLST[\opjҐg
`Ґ]
SЪP
+К(
input_1€€€€€€€€€іј
!К
input_2€€€€€€€€€
p

 
™ "ђҐ®
"К
tensor_0€€€€€€€€€
БЪ~
К

tensor_1_0 
К

tensor_1_1 
К

tensor_1_2 
К

tensor_1_3 
К

tensor_1_4 
К

tensor_1_5 с
?__inference_model_layer_call_and_return_conditional_losses_7109≠-.<=KLST[\oplҐi
bҐ_
UЪR
,К)
inputs_0€€€€€€€€€іј
"К
inputs_1€€€€€€€€€
p 

 
™ "ђҐ®
"К
tensor_0€€€€€€€€€
БЪ~
К

tensor_1_0 
К

tensor_1_1 
К

tensor_1_2 
К

tensor_1_3 
К

tensor_1_4 
К

tensor_1_5 с
?__inference_model_layer_call_and_return_conditional_losses_7295≠-.<=KLST[\oplҐi
bҐ_
UЪR
,К)
inputs_0€€€€€€€€€іј
"К
inputs_1€€€€€€€€€
p

 
™ "ђҐ®
"К
tensor_0€€€€€€€€€
БЪ~
К

tensor_1_0 
К

tensor_1_1 
К

tensor_1_2 
К

tensor_1_3 
К

tensor_1_4 
К

tensor_1_5 »
$__inference_model_layer_call_fn_6233Я-.<=KLST[\opjҐg
`Ґ]
SЪP
+К(
input_1€€€€€€€€€іј
!К
input_2€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€»
$__inference_model_layer_call_fn_6607Я-.<=KLST[\opjҐg
`Ґ]
SЪP
+К(
input_1€€€€€€€€€іј
!К
input_2€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€ 
$__inference_model_layer_call_fn_6883°-.<=KLST[\oplҐi
bҐ_
UЪR
,К)
inputs_0€€€€€€€€€іј
"К
inputs_1€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€ 
$__inference_model_layer_call_fn_6923°-.<=KLST[\oplҐi
bҐ_
UЪR
,К)
inputs_0€€€€€€€€€іј
"К
inputs_1€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€я
"__inference_signature_wrapper_6843Є-.<=KLST[\opsҐp
Ґ 
i™f
6
input_1+К(
input_1€€€€€€€€€іј
,
input_2!К
input_2€€€€€€€€€"1™.
,
dense_3!К
dense_3€€€€€€€€€