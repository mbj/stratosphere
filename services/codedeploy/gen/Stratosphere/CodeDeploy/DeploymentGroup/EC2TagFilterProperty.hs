module Stratosphere.CodeDeploy.DeploymentGroup.EC2TagFilterProperty (
        EC2TagFilterProperty(..), mkEC2TagFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EC2TagFilterProperty
  = EC2TagFilterProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                          type' :: (Prelude.Maybe (Value Prelude.Text)),
                          value :: (Prelude.Maybe (Value Prelude.Text))}
mkEC2TagFilterProperty :: EC2TagFilterProperty
mkEC2TagFilterProperty
  = EC2TagFilterProperty
      {key = Prelude.Nothing, type' = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties EC2TagFilterProperty where
  toResourceProperties EC2TagFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.EC2TagFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON EC2TagFilterProperty where
  toJSON EC2TagFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" EC2TagFilterProperty where
  type PropertyType "Key" EC2TagFilterProperty = Value Prelude.Text
  set newValue EC2TagFilterProperty {..}
    = EC2TagFilterProperty {key = Prelude.pure newValue, ..}
instance Property "Type" EC2TagFilterProperty where
  type PropertyType "Type" EC2TagFilterProperty = Value Prelude.Text
  set newValue EC2TagFilterProperty {..}
    = EC2TagFilterProperty {type' = Prelude.pure newValue, ..}
instance Property "Value" EC2TagFilterProperty where
  type PropertyType "Value" EC2TagFilterProperty = Value Prelude.Text
  set newValue EC2TagFilterProperty {..}
    = EC2TagFilterProperty {value = Prelude.pure newValue, ..}