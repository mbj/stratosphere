module Stratosphere.Lambda.Version.RuntimePolicyProperty (
        RuntimePolicyProperty(..), mkRuntimePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuntimePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-version-runtimepolicy.html>
    RuntimePolicyProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-version-runtimepolicy.html#cfn-lambda-version-runtimepolicy-runtimeversionarn>
                           runtimeVersionArn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-version-runtimepolicy.html#cfn-lambda-version-runtimepolicy-updateruntimeon>
                           updateRuntimeOn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuntimePolicyProperty ::
  Value Prelude.Text -> RuntimePolicyProperty
mkRuntimePolicyProperty updateRuntimeOn
  = RuntimePolicyProperty
      {haddock_workaround_ = (), updateRuntimeOn = updateRuntimeOn,
       runtimeVersionArn = Prelude.Nothing}
instance ToResourceProperties RuntimePolicyProperty where
  toResourceProperties RuntimePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Version.RuntimePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UpdateRuntimeOn" JSON..= updateRuntimeOn]
                           (Prelude.catMaybes
                              [(JSON..=) "RuntimeVersionArn" Prelude.<$> runtimeVersionArn]))}
instance JSON.ToJSON RuntimePolicyProperty where
  toJSON RuntimePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UpdateRuntimeOn" JSON..= updateRuntimeOn]
              (Prelude.catMaybes
                 [(JSON..=) "RuntimeVersionArn" Prelude.<$> runtimeVersionArn])))
instance Property "RuntimeVersionArn" RuntimePolicyProperty where
  type PropertyType "RuntimeVersionArn" RuntimePolicyProperty = Value Prelude.Text
  set newValue RuntimePolicyProperty {..}
    = RuntimePolicyProperty
        {runtimeVersionArn = Prelude.pure newValue, ..}
instance Property "UpdateRuntimeOn" RuntimePolicyProperty where
  type PropertyType "UpdateRuntimeOn" RuntimePolicyProperty = Value Prelude.Text
  set newValue RuntimePolicyProperty {..}
    = RuntimePolicyProperty {updateRuntimeOn = newValue, ..}