module Stratosphere.IoTTwinMaker.ComponentType.StatusProperty (
        module Exports, StatusProperty(..), mkStatusProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.ComponentType.ErrorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatusProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-status.html>
    StatusProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-status.html#cfn-iottwinmaker-componenttype-status-error>
                    error :: (Prelude.Maybe ErrorProperty),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-status.html#cfn-iottwinmaker-componenttype-status-state>
                    state :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatusProperty :: StatusProperty
mkStatusProperty
  = StatusProperty {error = Prelude.Nothing, state = Prelude.Nothing}
instance ToResourceProperties StatusProperty where
  toResourceProperties StatusProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::ComponentType.Status",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Error" Prelude.<$> error,
                            (JSON..=) "State" Prelude.<$> state])}
instance JSON.ToJSON StatusProperty where
  toJSON StatusProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Error" Prelude.<$> error,
               (JSON..=) "State" Prelude.<$> state]))
instance Property "Error" StatusProperty where
  type PropertyType "Error" StatusProperty = ErrorProperty
  set newValue StatusProperty {..}
    = StatusProperty {error = Prelude.pure newValue, ..}
instance Property "State" StatusProperty where
  type PropertyType "State" StatusProperty = Value Prelude.Text
  set newValue StatusProperty {..}
    = StatusProperty {state = Prelude.pure newValue, ..}