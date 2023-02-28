module Stratosphere.EKS.Nodegroup.RemoteAccessProperty (
        RemoteAccessProperty(..), mkRemoteAccessProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RemoteAccessProperty
  = RemoteAccessProperty {ec2SshKey :: (Value Prelude.Text),
                          sourceSecurityGroups :: (Prelude.Maybe (ValueList Prelude.Text))}
mkRemoteAccessProperty ::
  Value Prelude.Text -> RemoteAccessProperty
mkRemoteAccessProperty ec2SshKey
  = RemoteAccessProperty
      {ec2SshKey = ec2SshKey, sourceSecurityGroups = Prelude.Nothing}
instance ToResourceProperties RemoteAccessProperty where
  toResourceProperties RemoteAccessProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Nodegroup.RemoteAccess",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Ec2SshKey" JSON..= ec2SshKey]
                           (Prelude.catMaybes
                              [(JSON..=) "SourceSecurityGroups"
                                 Prelude.<$> sourceSecurityGroups]))}
instance JSON.ToJSON RemoteAccessProperty where
  toJSON RemoteAccessProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Ec2SshKey" JSON..= ec2SshKey]
              (Prelude.catMaybes
                 [(JSON..=) "SourceSecurityGroups"
                    Prelude.<$> sourceSecurityGroups])))
instance Property "Ec2SshKey" RemoteAccessProperty where
  type PropertyType "Ec2SshKey" RemoteAccessProperty = Value Prelude.Text
  set newValue RemoteAccessProperty {..}
    = RemoteAccessProperty {ec2SshKey = newValue, ..}
instance Property "SourceSecurityGroups" RemoteAccessProperty where
  type PropertyType "SourceSecurityGroups" RemoteAccessProperty = ValueList Prelude.Text
  set newValue RemoteAccessProperty {..}
    = RemoteAccessProperty
        {sourceSecurityGroups = Prelude.pure newValue, ..}