module Stratosphere.CodeDeploy.DeploymentGroup.TagFilterProperty (
        TagFilterProperty(..), mkTagFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-tagfilter.html>
    TagFilterProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-tagfilter.html#cfn-codedeploy-deploymentgroup-tagfilter-key>
                       key :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-tagfilter.html#cfn-codedeploy-deploymentgroup-tagfilter-type>
                       type' :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-tagfilter.html#cfn-codedeploy-deploymentgroup-tagfilter-value>
                       value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagFilterProperty :: TagFilterProperty
mkTagFilterProperty
  = TagFilterProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       type' = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties TagFilterProperty where
  toResourceProperties TagFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.TagFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON TagFilterProperty where
  toJSON TagFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" TagFilterProperty where
  type PropertyType "Key" TagFilterProperty = Value Prelude.Text
  set newValue TagFilterProperty {..}
    = TagFilterProperty {key = Prelude.pure newValue, ..}
instance Property "Type" TagFilterProperty where
  type PropertyType "Type" TagFilterProperty = Value Prelude.Text
  set newValue TagFilterProperty {..}
    = TagFilterProperty {type' = Prelude.pure newValue, ..}
instance Property "Value" TagFilterProperty where
  type PropertyType "Value" TagFilterProperty = Value Prelude.Text
  set newValue TagFilterProperty {..}
    = TagFilterProperty {value = Prelude.pure newValue, ..}