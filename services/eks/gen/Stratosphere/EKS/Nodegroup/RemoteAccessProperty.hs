module Stratosphere.EKS.Nodegroup.RemoteAccessProperty (
        RemoteAccessProperty(..), mkRemoteAccessProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RemoteAccessProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html>
    RemoteAccessProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html#cfn-eks-nodegroup-remoteaccess-ec2sshkey>
                          ec2SshKey :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html#cfn-eks-nodegroup-remoteaccess-sourcesecuritygroups>
                          sourceSecurityGroups :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRemoteAccessProperty ::
  Value Prelude.Text -> RemoteAccessProperty
mkRemoteAccessProperty ec2SshKey
  = RemoteAccessProperty
      {haddock_workaround_ = (), ec2SshKey = ec2SshKey,
       sourceSecurityGroups = Prelude.Nothing}
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