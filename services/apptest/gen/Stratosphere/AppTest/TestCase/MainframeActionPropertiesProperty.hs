module Stratosphere.AppTest.TestCase.MainframeActionPropertiesProperty (
        MainframeActionPropertiesProperty(..),
        mkMainframeActionPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MainframeActionPropertiesProperty
  = MainframeActionPropertiesProperty {dmsTaskArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMainframeActionPropertiesProperty ::
  MainframeActionPropertiesProperty
mkMainframeActionPropertiesProperty
  = MainframeActionPropertiesProperty {dmsTaskArn = Prelude.Nothing}
instance ToResourceProperties MainframeActionPropertiesProperty where
  toResourceProperties MainframeActionPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.MainframeActionProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DmsTaskArn" Prelude.<$> dmsTaskArn])}
instance JSON.ToJSON MainframeActionPropertiesProperty where
  toJSON MainframeActionPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DmsTaskArn" Prelude.<$> dmsTaskArn]))
instance Property "DmsTaskArn" MainframeActionPropertiesProperty where
  type PropertyType "DmsTaskArn" MainframeActionPropertiesProperty = Value Prelude.Text
  set newValue MainframeActionPropertiesProperty {}
    = MainframeActionPropertiesProperty
        {dmsTaskArn = Prelude.pure newValue, ..}