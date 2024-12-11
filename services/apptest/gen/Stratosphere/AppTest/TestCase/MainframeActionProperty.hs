module Stratosphere.AppTest.TestCase.MainframeActionProperty (
        module Exports, MainframeActionProperty(..),
        mkMainframeActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.MainframeActionPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.MainframeActionTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MainframeActionProperty
  = MainframeActionProperty {actionType :: MainframeActionTypeProperty,
                             properties :: (Prelude.Maybe MainframeActionPropertiesProperty),
                             resource :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMainframeActionProperty ::
  MainframeActionTypeProperty
  -> Value Prelude.Text -> MainframeActionProperty
mkMainframeActionProperty actionType resource
  = MainframeActionProperty
      {actionType = actionType, resource = resource,
       properties = Prelude.Nothing}
instance ToResourceProperties MainframeActionProperty where
  toResourceProperties MainframeActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.MainframeAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActionType" JSON..= actionType, "Resource" JSON..= resource]
                           (Prelude.catMaybes
                              [(JSON..=) "Properties" Prelude.<$> properties]))}
instance JSON.ToJSON MainframeActionProperty where
  toJSON MainframeActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActionType" JSON..= actionType, "Resource" JSON..= resource]
              (Prelude.catMaybes
                 [(JSON..=) "Properties" Prelude.<$> properties])))
instance Property "ActionType" MainframeActionProperty where
  type PropertyType "ActionType" MainframeActionProperty = MainframeActionTypeProperty
  set newValue MainframeActionProperty {..}
    = MainframeActionProperty {actionType = newValue, ..}
instance Property "Properties" MainframeActionProperty where
  type PropertyType "Properties" MainframeActionProperty = MainframeActionPropertiesProperty
  set newValue MainframeActionProperty {..}
    = MainframeActionProperty {properties = Prelude.pure newValue, ..}
instance Property "Resource" MainframeActionProperty where
  type PropertyType "Resource" MainframeActionProperty = Value Prelude.Text
  set newValue MainframeActionProperty {..}
    = MainframeActionProperty {resource = newValue, ..}