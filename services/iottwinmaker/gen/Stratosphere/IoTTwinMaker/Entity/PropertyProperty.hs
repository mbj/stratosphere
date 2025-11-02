module Stratosphere.IoTTwinMaker.Entity.PropertyProperty (
        module Exports, PropertyProperty(..), mkPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.DataValueProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.DefinitionProperty as Exports
import Stratosphere.ResourceProperties
data PropertyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-property.html>
    PropertyProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-property.html#cfn-iottwinmaker-entity-property-definition>
                      definition :: (Prelude.Maybe DefinitionProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-property.html#cfn-iottwinmaker-entity-property-value>
                      value :: (Prelude.Maybe DataValueProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPropertyProperty :: PropertyProperty
mkPropertyProperty
  = PropertyProperty
      {haddock_workaround_ = (), definition = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties PropertyProperty where
  toResourceProperties PropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Entity.Property",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Definition" Prelude.<$> definition,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON PropertyProperty where
  toJSON PropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Definition" Prelude.<$> definition,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Definition" PropertyProperty where
  type PropertyType "Definition" PropertyProperty = DefinitionProperty
  set newValue PropertyProperty {..}
    = PropertyProperty {definition = Prelude.pure newValue, ..}
instance Property "Value" PropertyProperty where
  type PropertyType "Value" PropertyProperty = DataValueProperty
  set newValue PropertyProperty {..}
    = PropertyProperty {value = Prelude.pure newValue, ..}