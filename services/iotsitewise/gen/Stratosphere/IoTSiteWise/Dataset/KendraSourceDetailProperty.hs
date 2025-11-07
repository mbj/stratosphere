module Stratosphere.IoTSiteWise.Dataset.KendraSourceDetailProperty (
        KendraSourceDetailProperty(..), mkKendraSourceDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KendraSourceDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-dataset-kendrasourcedetail.html>
    KendraSourceDetailProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-dataset-kendrasourcedetail.html#cfn-iotsitewise-dataset-kendrasourcedetail-knowledgebasearn>
                                knowledgeBaseArn :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-dataset-kendrasourcedetail.html#cfn-iotsitewise-dataset-kendrasourcedetail-rolearn>
                                roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKendraSourceDetailProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KendraSourceDetailProperty
mkKendraSourceDetailProperty knowledgeBaseArn roleArn
  = KendraSourceDetailProperty
      {haddock_workaround_ = (), knowledgeBaseArn = knowledgeBaseArn,
       roleArn = roleArn}
instance ToResourceProperties KendraSourceDetailProperty where
  toResourceProperties KendraSourceDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Dataset.KendraSourceDetail",
         supportsTags = Prelude.False,
         properties = ["KnowledgeBaseArn" JSON..= knowledgeBaseArn,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON KendraSourceDetailProperty where
  toJSON KendraSourceDetailProperty {..}
    = JSON.object
        ["KnowledgeBaseArn" JSON..= knowledgeBaseArn,
         "RoleArn" JSON..= roleArn]
instance Property "KnowledgeBaseArn" KendraSourceDetailProperty where
  type PropertyType "KnowledgeBaseArn" KendraSourceDetailProperty = Value Prelude.Text
  set newValue KendraSourceDetailProperty {..}
    = KendraSourceDetailProperty {knowledgeBaseArn = newValue, ..}
instance Property "RoleArn" KendraSourceDetailProperty where
  type PropertyType "RoleArn" KendraSourceDetailProperty = Value Prelude.Text
  set newValue KendraSourceDetailProperty {..}
    = KendraSourceDetailProperty {roleArn = newValue, ..}