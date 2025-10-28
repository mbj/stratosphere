module Stratosphere.SageMaker.Domain.CustomPosixUserConfigProperty (
        CustomPosixUserConfigProperty(..), mkCustomPosixUserConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomPosixUserConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-customposixuserconfig.html>
    CustomPosixUserConfigProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-customposixuserconfig.html#cfn-sagemaker-domain-customposixuserconfig-gid>
                                   gid :: (Value Prelude.Integer),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-customposixuserconfig.html#cfn-sagemaker-domain-customposixuserconfig-uid>
                                   uid :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomPosixUserConfigProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> CustomPosixUserConfigProperty
mkCustomPosixUserConfigProperty gid uid
  = CustomPosixUserConfigProperty
      {haddock_workaround_ = (), gid = gid, uid = uid}
instance ToResourceProperties CustomPosixUserConfigProperty where
  toResourceProperties CustomPosixUserConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.CustomPosixUserConfig",
         supportsTags = Prelude.False,
         properties = ["Gid" JSON..= gid, "Uid" JSON..= uid]}
instance JSON.ToJSON CustomPosixUserConfigProperty where
  toJSON CustomPosixUserConfigProperty {..}
    = JSON.object ["Gid" JSON..= gid, "Uid" JSON..= uid]
instance Property "Gid" CustomPosixUserConfigProperty where
  type PropertyType "Gid" CustomPosixUserConfigProperty = Value Prelude.Integer
  set newValue CustomPosixUserConfigProperty {..}
    = CustomPosixUserConfigProperty {gid = newValue, ..}
instance Property "Uid" CustomPosixUserConfigProperty where
  type PropertyType "Uid" CustomPosixUserConfigProperty = Value Prelude.Integer
  set newValue CustomPosixUserConfigProperty {..}
    = CustomPosixUserConfigProperty {uid = newValue, ..}