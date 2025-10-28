module Stratosphere.CodePipeline.Pipeline.ActionTypeIdProperty (
        ActionTypeIdProperty(..), mkActionTypeIdProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionTypeIdProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-actiontypeid.html>
    ActionTypeIdProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-actiontypeid.html#cfn-codepipeline-pipeline-actiontypeid-category>
                          category :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-actiontypeid.html#cfn-codepipeline-pipeline-actiontypeid-owner>
                          owner :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-actiontypeid.html#cfn-codepipeline-pipeline-actiontypeid-provider>
                          provider :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-actiontypeid.html#cfn-codepipeline-pipeline-actiontypeid-version>
                          version :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionTypeIdProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> ActionTypeIdProperty
mkActionTypeIdProperty category owner provider version
  = ActionTypeIdProperty
      {haddock_workaround_ = (), category = category, owner = owner,
       provider = provider, version = version}
instance ToResourceProperties ActionTypeIdProperty where
  toResourceProperties ActionTypeIdProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.ActionTypeId",
         supportsTags = Prelude.False,
         properties = ["Category" JSON..= category, "Owner" JSON..= owner,
                       "Provider" JSON..= provider, "Version" JSON..= version]}
instance JSON.ToJSON ActionTypeIdProperty where
  toJSON ActionTypeIdProperty {..}
    = JSON.object
        ["Category" JSON..= category, "Owner" JSON..= owner,
         "Provider" JSON..= provider, "Version" JSON..= version]
instance Property "Category" ActionTypeIdProperty where
  type PropertyType "Category" ActionTypeIdProperty = Value Prelude.Text
  set newValue ActionTypeIdProperty {..}
    = ActionTypeIdProperty {category = newValue, ..}
instance Property "Owner" ActionTypeIdProperty where
  type PropertyType "Owner" ActionTypeIdProperty = Value Prelude.Text
  set newValue ActionTypeIdProperty {..}
    = ActionTypeIdProperty {owner = newValue, ..}
instance Property "Provider" ActionTypeIdProperty where
  type PropertyType "Provider" ActionTypeIdProperty = Value Prelude.Text
  set newValue ActionTypeIdProperty {..}
    = ActionTypeIdProperty {provider = newValue, ..}
instance Property "Version" ActionTypeIdProperty where
  type PropertyType "Version" ActionTypeIdProperty = Value Prelude.Text
  set newValue ActionTypeIdProperty {..}
    = ActionTypeIdProperty {version = newValue, ..}