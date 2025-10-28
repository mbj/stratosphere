module Stratosphere.MSK.Cluster.ConfigurationInfoProperty (
        ConfigurationInfoProperty(..), mkConfigurationInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-configurationinfo.html>
    ConfigurationInfoProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-configurationinfo.html#cfn-msk-cluster-configurationinfo-arn>
                               arn :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-configurationinfo.html#cfn-msk-cluster-configurationinfo-revision>
                               revision :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationInfoProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> ConfigurationInfoProperty
mkConfigurationInfoProperty arn revision
  = ConfigurationInfoProperty
      {haddock_workaround_ = (), arn = arn, revision = revision}
instance ToResourceProperties ConfigurationInfoProperty where
  toResourceProperties ConfigurationInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.ConfigurationInfo",
         supportsTags = Prelude.False,
         properties = ["Arn" JSON..= arn, "Revision" JSON..= revision]}
instance JSON.ToJSON ConfigurationInfoProperty where
  toJSON ConfigurationInfoProperty {..}
    = JSON.object ["Arn" JSON..= arn, "Revision" JSON..= revision]
instance Property "Arn" ConfigurationInfoProperty where
  type PropertyType "Arn" ConfigurationInfoProperty = Value Prelude.Text
  set newValue ConfigurationInfoProperty {..}
    = ConfigurationInfoProperty {arn = newValue, ..}
instance Property "Revision" ConfigurationInfoProperty where
  type PropertyType "Revision" ConfigurationInfoProperty = Value Prelude.Integer
  set newValue ConfigurationInfoProperty {..}
    = ConfigurationInfoProperty {revision = newValue, ..}