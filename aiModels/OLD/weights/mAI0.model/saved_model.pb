¢ê
î
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
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
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
¾
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.0-49-g85c8b2a817f8Ù

dense_1420/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*"
shared_namedense_1420/kernel
x
%dense_1420/kernel/Read/ReadVariableOpReadVariableOpdense_1420/kernel*
_output_shapes
:	*
dtype0
v
dense_1420/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_1420/bias
o
#dense_1420/bias/Read/ReadVariableOpReadVariableOpdense_1420/bias*
_output_shapes
:*
dtype0
~
dense_1421/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_1421/kernel
w
%dense_1421/kernel/Read/ReadVariableOpReadVariableOpdense_1421/kernel*
_output_shapes

:*
dtype0
v
dense_1421/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_1421/bias
o
#dense_1421/bias/Read/ReadVariableOpReadVariableOpdense_1421/bias*
_output_shapes
:*
dtype0

NoOpNoOp
õ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*°
value¦B£ B
Ù
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
	optimizer
trainable_variables
	variables
regularization_losses
		keras_api


signatures
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
 

0
1
2
3

0
1
2
3
 
­
layer_regularization_losses
trainable_variables
 layer_metrics
	variables
regularization_losses
!non_trainable_variables

"layers
#metrics
 
][
VARIABLE_VALUEdense_1420/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_1420/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
$layer_regularization_losses
trainable_variables
%layer_metrics
	variables
regularization_losses
&non_trainable_variables

'layers
(metrics
 
 
 
­
)layer_regularization_losses
trainable_variables
*layer_metrics
	variables
regularization_losses
+non_trainable_variables

,layers
-metrics
][
VARIABLE_VALUEdense_1421/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_1421/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
.layer_regularization_losses
trainable_variables
/layer_metrics
	variables
regularization_losses
0non_trainable_variables

1layers
2metrics
 
 
 
­
3layer_regularization_losses
trainable_variables
4layer_metrics
	variables
regularization_losses
5non_trainable_variables

6layers
7metrics
 
 
 

0
1
2
3
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

 serving_default_dense_1420_inputPlaceholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_1420_inputdense_1420/kerneldense_1420/biasdense_1421/kerneldense_1421/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_814503
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
·
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_1420/kernel/Read/ReadVariableOp#dense_1420/bias/Read/ReadVariableOp%dense_1421/kernel/Read/ReadVariableOp#dense_1421/bias/Read/ReadVariableOpConst*
Tin

2*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_814658
â
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1420/kerneldense_1420/biasdense_1421/kerneldense_1421/bias*
Tin	
2*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_814680®µ
Õ
¼
"__inference__traced_restore_814680
file_prefix&
"assignvariableop_dense_1420_kernel&
"assignvariableop_1_dense_1420_bias(
$assignvariableop_2_dense_1421_kernel&
"assignvariableop_3_dense_1421_bias

identity_5¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
RestoreV2/shape_and_slicesÄ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¡
AssignVariableOpAssignVariableOp"assignvariableop_dense_1420_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1§
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_1420_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2©
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_1421_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3§
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_1421_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpº

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_4¬

Identity_5IdentityIdentity_4:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*
T0*
_output_shapes
: 2

Identity_5"!

identity_5Identity_5:output:0*%
_input_shapes
: ::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
»
g
K__inference_activation_1421_layer_call_and_return_conditional_losses_814618

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã

+__inference_dense_1420_layer_call_fn_814584

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_1420_layer_call_and_return_conditional_losses_8143442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


J__inference_sequential_710_layer_call_and_return_conditional_losses_814448

inputs
dense_1420_814435
dense_1420_814437
dense_1421_814441
dense_1421_814443
identity¢"dense_1420/StatefulPartitionedCall¢"dense_1421/StatefulPartitionedCall
"dense_1420/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1420_814435dense_1420_814437*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_1420_layer_call_and_return_conditional_losses_8143442$
"dense_1420/StatefulPartitionedCall
activation_1420/PartitionedCallPartitionedCall+dense_1420/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_1420_layer_call_and_return_conditional_losses_8143652!
activation_1420/PartitionedCallÀ
"dense_1421/StatefulPartitionedCallStatefulPartitionedCall(activation_1420/PartitionedCall:output:0dense_1421_814441dense_1421_814443*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_1421_layer_call_and_return_conditional_losses_8143832$
"dense_1421/StatefulPartitionedCall
activation_1421/PartitionedCallPartitionedCall+dense_1421/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_1421_layer_call_and_return_conditional_losses_8144042!
activation_1421/PartitionedCallÆ
IdentityIdentity(activation_1421/PartitionedCall:output:0#^dense_1420/StatefulPartitionedCall#^dense_1421/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2H
"dense_1420/StatefulPartitionedCall"dense_1420/StatefulPartitionedCall2H
"dense_1421/StatefulPartitionedCall"dense_1421/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
ß
F__inference_dense_1420_layer_call_and_return_conditional_losses_814575

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¡
$__inference_signature_wrapper_814503
dense_1420_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCalldense_1420_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_8143302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedense_1420_input
	
ß
F__inference_dense_1421_layer_call_and_return_conditional_losses_814383

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½

J__inference_sequential_710_layer_call_and_return_conditional_losses_814413
dense_1420_input
dense_1420_814355
dense_1420_814357
dense_1421_814394
dense_1421_814396
identity¢"dense_1420/StatefulPartitionedCall¢"dense_1421/StatefulPartitionedCall¨
"dense_1420/StatefulPartitionedCallStatefulPartitionedCalldense_1420_inputdense_1420_814355dense_1420_814357*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_1420_layer_call_and_return_conditional_losses_8143442$
"dense_1420/StatefulPartitionedCall
activation_1420/PartitionedCallPartitionedCall+dense_1420/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_1420_layer_call_and_return_conditional_losses_8143652!
activation_1420/PartitionedCallÀ
"dense_1421/StatefulPartitionedCallStatefulPartitionedCall(activation_1420/PartitionedCall:output:0dense_1421_814394dense_1421_814396*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_1421_layer_call_and_return_conditional_losses_8143832$
"dense_1421/StatefulPartitionedCall
activation_1421/PartitionedCallPartitionedCall+dense_1421/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_1421_layer_call_and_return_conditional_losses_8144042!
activation_1421/PartitionedCallÆ
IdentityIdentity(activation_1421/PartitionedCall:output:0#^dense_1420/StatefulPartitionedCall#^dense_1421/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2H
"dense_1420/StatefulPartitionedCall"dense_1420/StatefulPartitionedCall2H
"dense_1421/StatefulPartitionedCall"dense_1421/StatefulPartitionedCall:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedense_1420_input
	
ß
F__inference_dense_1421_layer_call_and_return_conditional_losses_814604

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»
g
K__inference_activation_1420_layer_call_and_return_conditional_losses_814365

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡

!__inference__wrapped_model_814330
dense_1420_input<
8sequential_710_dense_1420_matmul_readvariableop_resource=
9sequential_710_dense_1420_biasadd_readvariableop_resource<
8sequential_710_dense_1421_matmul_readvariableop_resource=
9sequential_710_dense_1421_biasadd_readvariableop_resource
identity¢0sequential_710/dense_1420/BiasAdd/ReadVariableOp¢/sequential_710/dense_1420/MatMul/ReadVariableOp¢0sequential_710/dense_1421/BiasAdd/ReadVariableOp¢/sequential_710/dense_1421/MatMul/ReadVariableOpÜ
/sequential_710/dense_1420/MatMul/ReadVariableOpReadVariableOp8sequential_710_dense_1420_matmul_readvariableop_resource*
_output_shapes
:	*
dtype021
/sequential_710/dense_1420/MatMul/ReadVariableOpË
 sequential_710/dense_1420/MatMulMatMuldense_1420_input7sequential_710/dense_1420/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_710/dense_1420/MatMulÚ
0sequential_710/dense_1420/BiasAdd/ReadVariableOpReadVariableOp9sequential_710_dense_1420_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0sequential_710/dense_1420/BiasAdd/ReadVariableOpé
!sequential_710/dense_1420/BiasAddBiasAdd*sequential_710/dense_1420/MatMul:product:08sequential_710/dense_1420/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_710/dense_1420/BiasAdd¹
&sequential_710/activation_1420/SigmoidSigmoid*sequential_710/dense_1420/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_710/activation_1420/SigmoidÛ
/sequential_710/dense_1421/MatMul/ReadVariableOpReadVariableOp8sequential_710_dense_1421_matmul_readvariableop_resource*
_output_shapes

:*
dtype021
/sequential_710/dense_1421/MatMul/ReadVariableOpå
 sequential_710/dense_1421/MatMulMatMul*sequential_710/activation_1420/Sigmoid:y:07sequential_710/dense_1421/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_710/dense_1421/MatMulÚ
0sequential_710/dense_1421/BiasAdd/ReadVariableOpReadVariableOp9sequential_710_dense_1421_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0sequential_710/dense_1421/BiasAdd/ReadVariableOpé
!sequential_710/dense_1421/BiasAddBiasAdd*sequential_710/dense_1421/MatMul:product:08sequential_710/dense_1421/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_710/dense_1421/BiasAdd¹
&sequential_710/activation_1421/SigmoidSigmoid*sequential_710/dense_1421/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_710/activation_1421/SigmoidÈ
IdentityIdentity*sequential_710/activation_1421/Sigmoid:y:01^sequential_710/dense_1420/BiasAdd/ReadVariableOp0^sequential_710/dense_1420/MatMul/ReadVariableOp1^sequential_710/dense_1421/BiasAdd/ReadVariableOp0^sequential_710/dense_1421/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2d
0sequential_710/dense_1420/BiasAdd/ReadVariableOp0sequential_710/dense_1420/BiasAdd/ReadVariableOp2b
/sequential_710/dense_1420/MatMul/ReadVariableOp/sequential_710/dense_1420/MatMul/ReadVariableOp2d
0sequential_710/dense_1421/BiasAdd/ReadVariableOp0sequential_710/dense_1421/BiasAdd/ReadVariableOp2b
/sequential_710/dense_1421/MatMul/ReadVariableOp/sequential_710/dense_1421/MatMul/ReadVariableOp:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedense_1420_input
ë
°
__inference__traced_save_814658
file_prefix0
,savev2_dense_1420_kernel_read_readvariableop.
*savev2_dense_1420_bias_read_readvariableop0
,savev2_dense_1421_kernel_read_readvariableop.
*savev2_dense_1421_bias_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameý
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
SaveV2/shape_and_slicesò
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_1420_kernel_read_readvariableop*savev2_dense_1420_bias_read_readvariableop,savev2_dense_1421_kernel_read_readvariableop*savev2_dense_1421_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
22
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*8
_input_shapes'
%: :	:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 

µ
J__inference_sequential_710_layer_call_and_return_conditional_losses_814539

inputs-
)dense_1420_matmul_readvariableop_resource.
*dense_1420_biasadd_readvariableop_resource-
)dense_1421_matmul_readvariableop_resource.
*dense_1421_biasadd_readvariableop_resource
identity¢!dense_1420/BiasAdd/ReadVariableOp¢ dense_1420/MatMul/ReadVariableOp¢!dense_1421/BiasAdd/ReadVariableOp¢ dense_1421/MatMul/ReadVariableOp¯
 dense_1420/MatMul/ReadVariableOpReadVariableOp)dense_1420_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02"
 dense_1420/MatMul/ReadVariableOp
dense_1420/MatMulMatMulinputs(dense_1420/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1420/MatMul­
!dense_1420/BiasAdd/ReadVariableOpReadVariableOp*dense_1420_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1420/BiasAdd/ReadVariableOp­
dense_1420/BiasAddBiasAdddense_1420/MatMul:product:0)dense_1420/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1420/BiasAdd
activation_1420/SigmoidSigmoiddense_1420/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_1420/Sigmoid®
 dense_1421/MatMul/ReadVariableOpReadVariableOp)dense_1421_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 dense_1421/MatMul/ReadVariableOp©
dense_1421/MatMulMatMulactivation_1420/Sigmoid:y:0(dense_1421/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1421/MatMul­
!dense_1421/BiasAdd/ReadVariableOpReadVariableOp*dense_1421_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1421/BiasAdd/ReadVariableOp­
dense_1421/BiasAddBiasAdddense_1421/MatMul:product:0)dense_1421/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1421/BiasAdd
activation_1421/SigmoidSigmoiddense_1421/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_1421/Sigmoidý
IdentityIdentityactivation_1421/Sigmoid:y:0"^dense_1420/BiasAdd/ReadVariableOp!^dense_1420/MatMul/ReadVariableOp"^dense_1421/BiasAdd/ReadVariableOp!^dense_1421/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2F
!dense_1420/BiasAdd/ReadVariableOp!dense_1420/BiasAdd/ReadVariableOp2D
 dense_1420/MatMul/ReadVariableOp dense_1420/MatMul/ReadVariableOp2F
!dense_1421/BiasAdd/ReadVariableOp!dense_1421/BiasAdd/ReadVariableOp2D
 dense_1421/MatMul/ReadVariableOp dense_1421/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
¬
/__inference_sequential_710_layer_call_fn_814488
dense_1420_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_1420_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_710_layer_call_and_return_conditional_losses_8144772
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedense_1420_input
 
L
0__inference_activation_1421_layer_call_fn_814623

inputs
identityÉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_1421_layer_call_and_return_conditional_losses_8144042
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
ß
F__inference_dense_1420_layer_call_and_return_conditional_losses_814344

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

µ
J__inference_sequential_710_layer_call_and_return_conditional_losses_814521

inputs-
)dense_1420_matmul_readvariableop_resource.
*dense_1420_biasadd_readvariableop_resource-
)dense_1421_matmul_readvariableop_resource.
*dense_1421_biasadd_readvariableop_resource
identity¢!dense_1420/BiasAdd/ReadVariableOp¢ dense_1420/MatMul/ReadVariableOp¢!dense_1421/BiasAdd/ReadVariableOp¢ dense_1421/MatMul/ReadVariableOp¯
 dense_1420/MatMul/ReadVariableOpReadVariableOp)dense_1420_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02"
 dense_1420/MatMul/ReadVariableOp
dense_1420/MatMulMatMulinputs(dense_1420/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1420/MatMul­
!dense_1420/BiasAdd/ReadVariableOpReadVariableOp*dense_1420_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1420/BiasAdd/ReadVariableOp­
dense_1420/BiasAddBiasAdddense_1420/MatMul:product:0)dense_1420/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1420/BiasAdd
activation_1420/SigmoidSigmoiddense_1420/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_1420/Sigmoid®
 dense_1421/MatMul/ReadVariableOpReadVariableOp)dense_1421_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 dense_1421/MatMul/ReadVariableOp©
dense_1421/MatMulMatMulactivation_1420/Sigmoid:y:0(dense_1421/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1421/MatMul­
!dense_1421/BiasAdd/ReadVariableOpReadVariableOp*dense_1421_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1421/BiasAdd/ReadVariableOp­
dense_1421/BiasAddBiasAdddense_1421/MatMul:product:0)dense_1421/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1421/BiasAdd
activation_1421/SigmoidSigmoiddense_1421/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_1421/Sigmoidý
IdentityIdentityactivation_1421/Sigmoid:y:0"^dense_1420/BiasAdd/ReadVariableOp!^dense_1420/MatMul/ReadVariableOp"^dense_1421/BiasAdd/ReadVariableOp!^dense_1421/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2F
!dense_1420/BiasAdd/ReadVariableOp!dense_1420/BiasAdd/ReadVariableOp2D
 dense_1420/MatMul/ReadVariableOp dense_1420/MatMul/ReadVariableOp2F
!dense_1421/BiasAdd/ReadVariableOp!dense_1421/BiasAdd/ReadVariableOp2D
 dense_1421/MatMul/ReadVariableOp dense_1421/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á

+__inference_dense_1421_layer_call_fn_814613

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_1421_layer_call_and_return_conditional_losses_8143832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
¢
/__inference_sequential_710_layer_call_fn_814552

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_710_layer_call_and_return_conditional_losses_8144482
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½

J__inference_sequential_710_layer_call_and_return_conditional_losses_814429
dense_1420_input
dense_1420_814416
dense_1420_814418
dense_1421_814422
dense_1421_814424
identity¢"dense_1420/StatefulPartitionedCall¢"dense_1421/StatefulPartitionedCall¨
"dense_1420/StatefulPartitionedCallStatefulPartitionedCalldense_1420_inputdense_1420_814416dense_1420_814418*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_1420_layer_call_and_return_conditional_losses_8143442$
"dense_1420/StatefulPartitionedCall
activation_1420/PartitionedCallPartitionedCall+dense_1420/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_1420_layer_call_and_return_conditional_losses_8143652!
activation_1420/PartitionedCallÀ
"dense_1421/StatefulPartitionedCallStatefulPartitionedCall(activation_1420/PartitionedCall:output:0dense_1421_814422dense_1421_814424*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_1421_layer_call_and_return_conditional_losses_8143832$
"dense_1421/StatefulPartitionedCall
activation_1421/PartitionedCallPartitionedCall+dense_1421/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_1421_layer_call_and_return_conditional_losses_8144042!
activation_1421/PartitionedCallÆ
IdentityIdentity(activation_1421/PartitionedCall:output:0#^dense_1420/StatefulPartitionedCall#^dense_1421/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2H
"dense_1420/StatefulPartitionedCall"dense_1420/StatefulPartitionedCall2H
"dense_1421/StatefulPartitionedCall"dense_1421/StatefulPartitionedCall:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedense_1420_input
»
g
K__inference_activation_1420_layer_call_and_return_conditional_losses_814589

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


J__inference_sequential_710_layer_call_and_return_conditional_losses_814477

inputs
dense_1420_814464
dense_1420_814466
dense_1421_814470
dense_1421_814472
identity¢"dense_1420/StatefulPartitionedCall¢"dense_1421/StatefulPartitionedCall
"dense_1420/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1420_814464dense_1420_814466*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_1420_layer_call_and_return_conditional_losses_8143442$
"dense_1420/StatefulPartitionedCall
activation_1420/PartitionedCallPartitionedCall+dense_1420/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_1420_layer_call_and_return_conditional_losses_8143652!
activation_1420/PartitionedCallÀ
"dense_1421/StatefulPartitionedCallStatefulPartitionedCall(activation_1420/PartitionedCall:output:0dense_1421_814470dense_1421_814472*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_1421_layer_call_and_return_conditional_losses_8143832$
"dense_1421/StatefulPartitionedCall
activation_1421/PartitionedCallPartitionedCall+dense_1421/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_1421_layer_call_and_return_conditional_losses_8144042!
activation_1421/PartitionedCallÆ
IdentityIdentity(activation_1421/PartitionedCall:output:0#^dense_1420/StatefulPartitionedCall#^dense_1421/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2H
"dense_1420/StatefulPartitionedCall"dense_1420/StatefulPartitionedCall2H
"dense_1421/StatefulPartitionedCall"dense_1421/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
¢
/__inference_sequential_710_layer_call_fn_814565

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_710_layer_call_and_return_conditional_losses_8144772
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»
g
K__inference_activation_1421_layer_call_and_return_conditional_losses_814404

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 
L
0__inference_activation_1420_layer_call_fn_814594

inputs
identityÉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_activation_1420_layer_call_and_return_conditional_losses_8143652
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
¬
/__inference_sequential_710_layer_call_fn_814459
dense_1420_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_1420_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_710_layer_call_and_return_conditional_losses_8144482
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedense_1420_input"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Å
serving_default±
N
dense_1420_input:
"serving_default_dense_1420_input:0ÿÿÿÿÿÿÿÿÿC
activation_14210
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ü
¨
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
	optimizer
trainable_variables
	variables
regularization_losses
		keras_api


signatures
*8&call_and_return_all_conditional_losses
9_default_save_signature
:__call__"õ
_tf_keras_sequentialÖ{"class_name": "Sequential", "name": "sequential_710", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_710", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 134]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_1420_input"}}, {"class_name": "Dense", "config": {"name": "dense_1420", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 134]}, "dtype": "float32", "units": 12, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1420", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}, {"class_name": "Dense", "config": {"name": "dense_1421", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1421", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 134}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 134]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_710", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 134]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_1420_input"}}, {"class_name": "Dense", "config": {"name": "dense_1420", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 134]}, "dtype": "float32", "units": 12, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1420", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}, {"class_name": "Dense", "config": {"name": "dense_1421", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1421", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}]}}, "training_config": {"loss": "mse", "metrics": ["accuracy"], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.01, "decay": 1e-06, "momentum": 0.9, "nesterov": true}}}}
ï

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*;&call_and_return_all_conditional_losses
<__call__"Ê
_tf_keras_layer°{"class_name": "Dense", "name": "dense_1420", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 134]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1420", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 134]}, "dtype": "float32", "units": 12, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 134}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 134]}}
Þ
trainable_variables
	variables
regularization_losses
	keras_api
*=&call_and_return_all_conditional_losses
>__call__"Ï
_tf_keras_layerµ{"class_name": "Activation", "name": "activation_1420", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_1420", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}
÷

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*?&call_and_return_all_conditional_losses
@__call__"Ò
_tf_keras_layer¸{"class_name": "Dense", "name": "dense_1421", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1421", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 12}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12]}}
Þ
trainable_variables
	variables
regularization_losses
	keras_api
*A&call_and_return_all_conditional_losses
B__call__"Ï
_tf_keras_layerµ{"class_name": "Activation", "name": "activation_1421", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_1421", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}
"
	optimizer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
layer_regularization_losses
trainable_variables
 layer_metrics
	variables
regularization_losses
!non_trainable_variables

"layers
#metrics
:__call__
9_default_save_signature
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
,
Cserving_default"
signature_map
$:"	2dense_1420/kernel
:2dense_1420/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
$layer_regularization_losses
trainable_variables
%layer_metrics
	variables
regularization_losses
&non_trainable_variables

'layers
(metrics
<__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
)layer_regularization_losses
trainable_variables
*layer_metrics
	variables
regularization_losses
+non_trainable_variables

,layers
-metrics
>__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
#:!2dense_1421/kernel
:2dense_1421/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
.layer_regularization_losses
trainable_variables
/layer_metrics
	variables
regularization_losses
0non_trainable_variables

1layers
2metrics
@__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
3layer_regularization_losses
trainable_variables
4layer_metrics
	variables
regularization_losses
5non_trainable_variables

6layers
7metrics
B__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
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
ö2ó
J__inference_sequential_710_layer_call_and_return_conditional_losses_814413
J__inference_sequential_710_layer_call_and_return_conditional_losses_814429
J__inference_sequential_710_layer_call_and_return_conditional_losses_814521
J__inference_sequential_710_layer_call_and_return_conditional_losses_814539À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
é2æ
!__inference__wrapped_model_814330À
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *0¢-
+(
dense_1420_inputÿÿÿÿÿÿÿÿÿ
2
/__inference_sequential_710_layer_call_fn_814552
/__inference_sequential_710_layer_call_fn_814488
/__inference_sequential_710_layer_call_fn_814459
/__inference_sequential_710_layer_call_fn_814565À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ð2í
F__inference_dense_1420_layer_call_and_return_conditional_losses_814575¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_dense_1420_layer_call_fn_814584¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_activation_1420_layer_call_and_return_conditional_losses_814589¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ú2×
0__inference_activation_1420_layer_call_fn_814594¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_1421_layer_call_and_return_conditional_losses_814604¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_dense_1421_layer_call_fn_814613¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_activation_1421_layer_call_and_return_conditional_losses_814618¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ú2×
0__inference_activation_1421_layer_call_fn_814623¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÔBÑ
$__inference_signature_wrapper_814503dense_1420_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 «
!__inference__wrapped_model_814330:¢7
0¢-
+(
dense_1420_inputÿÿÿÿÿÿÿÿÿ
ª "Aª>
<
activation_1421)&
activation_1421ÿÿÿÿÿÿÿÿÿ§
K__inference_activation_1420_layer_call_and_return_conditional_losses_814589X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
0__inference_activation_1420_layer_call_fn_814594K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
K__inference_activation_1421_layer_call_and_return_conditional_losses_814618X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
0__inference_activation_1421_layer_call_fn_814623K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
F__inference_dense_1420_layer_call_and_return_conditional_losses_814575]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_1420_layer_call_fn_814584P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¦
F__inference_dense_1421_layer_call_and_return_conditional_losses_814604\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_1421_layer_call_fn_814613O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¿
J__inference_sequential_710_layer_call_and_return_conditional_losses_814413qB¢?
8¢5
+(
dense_1420_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
J__inference_sequential_710_layer_call_and_return_conditional_losses_814429qB¢?
8¢5
+(
dense_1420_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 µ
J__inference_sequential_710_layer_call_and_return_conditional_losses_814521g8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 µ
J__inference_sequential_710_layer_call_and_return_conditional_losses_814539g8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_sequential_710_layer_call_fn_814459dB¢?
8¢5
+(
dense_1420_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_710_layer_call_fn_814488dB¢?
8¢5
+(
dense_1420_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_710_layer_call_fn_814552Z8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_710_layer_call_fn_814565Z8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÂ
$__inference_signature_wrapper_814503N¢K
¢ 
DªA
?
dense_1420_input+(
dense_1420_inputÿÿÿÿÿÿÿÿÿ"Aª>
<
activation_1421)&
activation_1421ÿÿÿÿÿÿÿÿÿ