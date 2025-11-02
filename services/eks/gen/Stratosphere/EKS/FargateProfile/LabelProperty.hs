module Stratosphere.EKS.FargateProfile.LabelProperty (
        LabelProperty(..), mkLabelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LabelProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-fargateprofile-label.html>
    LabelProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-fargateprofile-label.html#cfn-eks-fargateprofile-label-key>
                   key :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-fargateprofile-label.html#cfn-eks-fargateprofile-label-value>
                   value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLabelProperty ::
  Value Prelude.Text -> Value Prelude.Text -> LabelProperty
mkLabelProperty key value
  = LabelProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties LabelProperty where
  toResourceProperties LabelProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::FargateProfile.Label",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON LabelProperty where
  toJSON LabelProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" LabelProperty where
  type PropertyType "Key" LabelProperty = Value Prelude.Text
  set newValue LabelProperty {..}
    = LabelProperty {key = newValue, ..}
instance Property "Value" LabelProperty where
  type PropertyType "Value" LabelProperty = Value Prelude.Text
  set newValue LabelProperty {..}
    = LabelProperty {value = newValue, ..}