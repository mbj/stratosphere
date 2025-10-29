module Stratosphere.CodeBuild.Project.WebhookFilterProperty (
        WebhookFilterProperty(..), mkWebhookFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebhookFilterProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html>
    WebhookFilterProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-excludematchedpattern>
                           excludeMatchedPattern :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-pattern>
                           pattern :: (Value Prelude.Text),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-type>
                           type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebhookFilterProperty ::
  Value Prelude.Text -> Value Prelude.Text -> WebhookFilterProperty
mkWebhookFilterProperty pattern type'
  = WebhookFilterProperty
      {pattern = pattern, type' = type',
       excludeMatchedPattern = Prelude.Nothing}
instance ToResourceProperties WebhookFilterProperty where
  toResourceProperties WebhookFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.WebhookFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Pattern" JSON..= pattern, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ExcludeMatchedPattern"
                                 Prelude.<$> excludeMatchedPattern]))}
instance JSON.ToJSON WebhookFilterProperty where
  toJSON WebhookFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Pattern" JSON..= pattern, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "ExcludeMatchedPattern"
                    Prelude.<$> excludeMatchedPattern])))
instance Property "ExcludeMatchedPattern" WebhookFilterProperty where
  type PropertyType "ExcludeMatchedPattern" WebhookFilterProperty = Value Prelude.Bool
  set newValue WebhookFilterProperty {..}
    = WebhookFilterProperty
        {excludeMatchedPattern = Prelude.pure newValue, ..}
instance Property "Pattern" WebhookFilterProperty where
  type PropertyType "Pattern" WebhookFilterProperty = Value Prelude.Text
  set newValue WebhookFilterProperty {..}
    = WebhookFilterProperty {pattern = newValue, ..}
instance Property "Type" WebhookFilterProperty where
  type PropertyType "Type" WebhookFilterProperty = Value Prelude.Text
  set newValue WebhookFilterProperty {..}
    = WebhookFilterProperty {type' = newValue, ..}