module Stratosphere.CodeDeploy.DeploymentGroup.TagFilterProperty (
        TagFilterProperty(..), mkTagFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagFilterProperty
  = TagFilterProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                       type' :: (Prelude.Maybe (Value Prelude.Text)),
                       value :: (Prelude.Maybe (Value Prelude.Text))}
mkTagFilterProperty :: TagFilterProperty
mkTagFilterProperty
  = TagFilterProperty
      {key = Prelude.Nothing, type' = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties TagFilterProperty where
  toResourceProperties TagFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.TagFilter",
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