module Stratosphere.Glue.DevEndpoint (
        DevEndpoint(..), mkDevEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DevEndpoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html>
    DevEndpoint {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-arguments>
                 arguments :: (Prelude.Maybe JSON.Object),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-endpointname>
                 endpointName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-extrajarss3path>
                 extraJarsS3Path :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-extrapythonlibss3path>
                 extraPythonLibsS3Path :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-glueversion>
                 glueVersion :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-numberofnodes>
                 numberOfNodes :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-numberofworkers>
                 numberOfWorkers :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-publickey>
                 publicKey :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-publickeys>
                 publicKeys :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-rolearn>
                 roleArn :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-securityconfiguration>
                 securityConfiguration :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-securitygroupids>
                 securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-subnetid>
                 subnetId :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-tags>
                 tags :: (Prelude.Maybe JSON.Object),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-workertype>
                 workerType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDevEndpoint :: Value Prelude.Text -> DevEndpoint
mkDevEndpoint roleArn
  = DevEndpoint
      {haddock_workaround_ = (), roleArn = roleArn,
       arguments = Prelude.Nothing, endpointName = Prelude.Nothing,
       extraJarsS3Path = Prelude.Nothing,
       extraPythonLibsS3Path = Prelude.Nothing,
       glueVersion = Prelude.Nothing, numberOfNodes = Prelude.Nothing,
       numberOfWorkers = Prelude.Nothing, publicKey = Prelude.Nothing,
       publicKeys = Prelude.Nothing,
       securityConfiguration = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, subnetId = Prelude.Nothing,
       tags = Prelude.Nothing, workerType = Prelude.Nothing}
instance ToResourceProperties DevEndpoint where
  toResourceProperties DevEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::Glue::DevEndpoint", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Arguments" Prelude.<$> arguments,
                               (JSON..=) "EndpointName" Prelude.<$> endpointName,
                               (JSON..=) "ExtraJarsS3Path" Prelude.<$> extraJarsS3Path,
                               (JSON..=) "ExtraPythonLibsS3Path"
                                 Prelude.<$> extraPythonLibsS3Path,
                               (JSON..=) "GlueVersion" Prelude.<$> glueVersion,
                               (JSON..=) "NumberOfNodes" Prelude.<$> numberOfNodes,
                               (JSON..=) "NumberOfWorkers" Prelude.<$> numberOfWorkers,
                               (JSON..=) "PublicKey" Prelude.<$> publicKey,
                               (JSON..=) "PublicKeys" Prelude.<$> publicKeys,
                               (JSON..=) "SecurityConfiguration"
                                 Prelude.<$> securityConfiguration,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SubnetId" Prelude.<$> subnetId,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "WorkerType" Prelude.<$> workerType]))}
instance JSON.ToJSON DevEndpoint where
  toJSON DevEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "Arguments" Prelude.<$> arguments,
                  (JSON..=) "EndpointName" Prelude.<$> endpointName,
                  (JSON..=) "ExtraJarsS3Path" Prelude.<$> extraJarsS3Path,
                  (JSON..=) "ExtraPythonLibsS3Path"
                    Prelude.<$> extraPythonLibsS3Path,
                  (JSON..=) "GlueVersion" Prelude.<$> glueVersion,
                  (JSON..=) "NumberOfNodes" Prelude.<$> numberOfNodes,
                  (JSON..=) "NumberOfWorkers" Prelude.<$> numberOfWorkers,
                  (JSON..=) "PublicKey" Prelude.<$> publicKey,
                  (JSON..=) "PublicKeys" Prelude.<$> publicKeys,
                  (JSON..=) "SecurityConfiguration"
                    Prelude.<$> securityConfiguration,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SubnetId" Prelude.<$> subnetId,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "WorkerType" Prelude.<$> workerType])))
instance Property "Arguments" DevEndpoint where
  type PropertyType "Arguments" DevEndpoint = JSON.Object
  set newValue DevEndpoint {..}
    = DevEndpoint {arguments = Prelude.pure newValue, ..}
instance Property "EndpointName" DevEndpoint where
  type PropertyType "EndpointName" DevEndpoint = Value Prelude.Text
  set newValue DevEndpoint {..}
    = DevEndpoint {endpointName = Prelude.pure newValue, ..}
instance Property "ExtraJarsS3Path" DevEndpoint where
  type PropertyType "ExtraJarsS3Path" DevEndpoint = Value Prelude.Text
  set newValue DevEndpoint {..}
    = DevEndpoint {extraJarsS3Path = Prelude.pure newValue, ..}
instance Property "ExtraPythonLibsS3Path" DevEndpoint where
  type PropertyType "ExtraPythonLibsS3Path" DevEndpoint = Value Prelude.Text
  set newValue DevEndpoint {..}
    = DevEndpoint {extraPythonLibsS3Path = Prelude.pure newValue, ..}
instance Property "GlueVersion" DevEndpoint where
  type PropertyType "GlueVersion" DevEndpoint = Value Prelude.Text
  set newValue DevEndpoint {..}
    = DevEndpoint {glueVersion = Prelude.pure newValue, ..}
instance Property "NumberOfNodes" DevEndpoint where
  type PropertyType "NumberOfNodes" DevEndpoint = Value Prelude.Integer
  set newValue DevEndpoint {..}
    = DevEndpoint {numberOfNodes = Prelude.pure newValue, ..}
instance Property "NumberOfWorkers" DevEndpoint where
  type PropertyType "NumberOfWorkers" DevEndpoint = Value Prelude.Integer
  set newValue DevEndpoint {..}
    = DevEndpoint {numberOfWorkers = Prelude.pure newValue, ..}
instance Property "PublicKey" DevEndpoint where
  type PropertyType "PublicKey" DevEndpoint = Value Prelude.Text
  set newValue DevEndpoint {..}
    = DevEndpoint {publicKey = Prelude.pure newValue, ..}
instance Property "PublicKeys" DevEndpoint where
  type PropertyType "PublicKeys" DevEndpoint = ValueList Prelude.Text
  set newValue DevEndpoint {..}
    = DevEndpoint {publicKeys = Prelude.pure newValue, ..}
instance Property "RoleArn" DevEndpoint where
  type PropertyType "RoleArn" DevEndpoint = Value Prelude.Text
  set newValue DevEndpoint {..}
    = DevEndpoint {roleArn = newValue, ..}
instance Property "SecurityConfiguration" DevEndpoint where
  type PropertyType "SecurityConfiguration" DevEndpoint = Value Prelude.Text
  set newValue DevEndpoint {..}
    = DevEndpoint {securityConfiguration = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" DevEndpoint where
  type PropertyType "SecurityGroupIds" DevEndpoint = ValueList Prelude.Text
  set newValue DevEndpoint {..}
    = DevEndpoint {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetId" DevEndpoint where
  type PropertyType "SubnetId" DevEndpoint = Value Prelude.Text
  set newValue DevEndpoint {..}
    = DevEndpoint {subnetId = Prelude.pure newValue, ..}
instance Property "Tags" DevEndpoint where
  type PropertyType "Tags" DevEndpoint = JSON.Object
  set newValue DevEndpoint {..}
    = DevEndpoint {tags = Prelude.pure newValue, ..}
instance Property "WorkerType" DevEndpoint where
  type PropertyType "WorkerType" DevEndpoint = Value Prelude.Text
  set newValue DevEndpoint {..}
    = DevEndpoint {workerType = Prelude.pure newValue, ..}