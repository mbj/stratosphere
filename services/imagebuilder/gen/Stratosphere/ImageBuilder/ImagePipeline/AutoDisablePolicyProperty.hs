module Stratosphere.ImageBuilder.ImagePipeline.AutoDisablePolicyProperty (
        AutoDisablePolicyProperty(..), mkAutoDisablePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoDisablePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-autodisablepolicy.html>
    AutoDisablePolicyProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-autodisablepolicy.html#cfn-imagebuilder-imagepipeline-autodisablepolicy-failurecount>
                               failureCount :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoDisablePolicyProperty ::
  Value Prelude.Integer -> AutoDisablePolicyProperty
mkAutoDisablePolicyProperty failureCount
  = AutoDisablePolicyProperty
      {haddock_workaround_ = (), failureCount = failureCount}
instance ToResourceProperties AutoDisablePolicyProperty where
  toResourceProperties AutoDisablePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ImagePipeline.AutoDisablePolicy",
         supportsTags = Prelude.False,
         properties = ["FailureCount" JSON..= failureCount]}
instance JSON.ToJSON AutoDisablePolicyProperty where
  toJSON AutoDisablePolicyProperty {..}
    = JSON.object ["FailureCount" JSON..= failureCount]
instance Property "FailureCount" AutoDisablePolicyProperty where
  type PropertyType "FailureCount" AutoDisablePolicyProperty = Value Prelude.Integer
  set newValue AutoDisablePolicyProperty {..}
    = AutoDisablePolicyProperty {failureCount = newValue, ..}