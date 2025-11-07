module Stratosphere.DataSync.LocationObjectStorage (
        module Exports, LocationObjectStorage(..), mkLocationObjectStorage
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationObjectStorage.CmkSecretConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.LocationObjectStorage.CustomSecretConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocationObjectStorage
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html>
    LocationObjectStorage {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-accesskey>
                           accessKey :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-agentarns>
                           agentArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-bucketname>
                           bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-cmksecretconfig>
                           cmkSecretConfig :: (Prelude.Maybe CmkSecretConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-customsecretconfig>
                           customSecretConfig :: (Prelude.Maybe CustomSecretConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-secretkey>
                           secretKey :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-servercertificate>
                           serverCertificate :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-serverhostname>
                           serverHostname :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-serverport>
                           serverPort :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-serverprotocol>
                           serverProtocol :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-subdirectory>
                           subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationobjectstorage.html#cfn-datasync-locationobjectstorage-tags>
                           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationObjectStorage :: LocationObjectStorage
mkLocationObjectStorage
  = LocationObjectStorage
      {haddock_workaround_ = (), accessKey = Prelude.Nothing,
       agentArns = Prelude.Nothing, bucketName = Prelude.Nothing,
       cmkSecretConfig = Prelude.Nothing,
       customSecretConfig = Prelude.Nothing, secretKey = Prelude.Nothing,
       serverCertificate = Prelude.Nothing,
       serverHostname = Prelude.Nothing, serverPort = Prelude.Nothing,
       serverProtocol = Prelude.Nothing, subdirectory = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LocationObjectStorage where
  toResourceProperties LocationObjectStorage {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationObjectStorage",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessKey" Prelude.<$> accessKey,
                            (JSON..=) "AgentArns" Prelude.<$> agentArns,
                            (JSON..=) "BucketName" Prelude.<$> bucketName,
                            (JSON..=) "CmkSecretConfig" Prelude.<$> cmkSecretConfig,
                            (JSON..=) "CustomSecretConfig" Prelude.<$> customSecretConfig,
                            (JSON..=) "SecretKey" Prelude.<$> secretKey,
                            (JSON..=) "ServerCertificate" Prelude.<$> serverCertificate,
                            (JSON..=) "ServerHostname" Prelude.<$> serverHostname,
                            (JSON..=) "ServerPort" Prelude.<$> serverPort,
                            (JSON..=) "ServerProtocol" Prelude.<$> serverProtocol,
                            (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON LocationObjectStorage where
  toJSON LocationObjectStorage {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessKey" Prelude.<$> accessKey,
               (JSON..=) "AgentArns" Prelude.<$> agentArns,
               (JSON..=) "BucketName" Prelude.<$> bucketName,
               (JSON..=) "CmkSecretConfig" Prelude.<$> cmkSecretConfig,
               (JSON..=) "CustomSecretConfig" Prelude.<$> customSecretConfig,
               (JSON..=) "SecretKey" Prelude.<$> secretKey,
               (JSON..=) "ServerCertificate" Prelude.<$> serverCertificate,
               (JSON..=) "ServerHostname" Prelude.<$> serverHostname,
               (JSON..=) "ServerPort" Prelude.<$> serverPort,
               (JSON..=) "ServerProtocol" Prelude.<$> serverProtocol,
               (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AccessKey" LocationObjectStorage where
  type PropertyType "AccessKey" LocationObjectStorage = Value Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage {accessKey = Prelude.pure newValue, ..}
instance Property "AgentArns" LocationObjectStorage where
  type PropertyType "AgentArns" LocationObjectStorage = ValueList Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage {agentArns = Prelude.pure newValue, ..}
instance Property "BucketName" LocationObjectStorage where
  type PropertyType "BucketName" LocationObjectStorage = Value Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage {bucketName = Prelude.pure newValue, ..}
instance Property "CmkSecretConfig" LocationObjectStorage where
  type PropertyType "CmkSecretConfig" LocationObjectStorage = CmkSecretConfigProperty
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage
        {cmkSecretConfig = Prelude.pure newValue, ..}
instance Property "CustomSecretConfig" LocationObjectStorage where
  type PropertyType "CustomSecretConfig" LocationObjectStorage = CustomSecretConfigProperty
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage
        {customSecretConfig = Prelude.pure newValue, ..}
instance Property "SecretKey" LocationObjectStorage where
  type PropertyType "SecretKey" LocationObjectStorage = Value Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage {secretKey = Prelude.pure newValue, ..}
instance Property "ServerCertificate" LocationObjectStorage where
  type PropertyType "ServerCertificate" LocationObjectStorage = Value Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage
        {serverCertificate = Prelude.pure newValue, ..}
instance Property "ServerHostname" LocationObjectStorage where
  type PropertyType "ServerHostname" LocationObjectStorage = Value Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage
        {serverHostname = Prelude.pure newValue, ..}
instance Property "ServerPort" LocationObjectStorage where
  type PropertyType "ServerPort" LocationObjectStorage = Value Prelude.Integer
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage {serverPort = Prelude.pure newValue, ..}
instance Property "ServerProtocol" LocationObjectStorage where
  type PropertyType "ServerProtocol" LocationObjectStorage = Value Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage
        {serverProtocol = Prelude.pure newValue, ..}
instance Property "Subdirectory" LocationObjectStorage where
  type PropertyType "Subdirectory" LocationObjectStorage = Value Prelude.Text
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage {subdirectory = Prelude.pure newValue, ..}
instance Property "Tags" LocationObjectStorage where
  type PropertyType "Tags" LocationObjectStorage = [Tag]
  set newValue LocationObjectStorage {..}
    = LocationObjectStorage {tags = Prelude.pure newValue, ..}