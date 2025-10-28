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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-mainframeactionproperties.html>
    MainframeActionPropertiesProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-mainframeactionproperties.html#cfn-apptest-testcase-mainframeactionproperties-dmstaskarn>
                                       dmsTaskArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMainframeActionPropertiesProperty ::
  MainframeActionPropertiesProperty
mkMainframeActionPropertiesProperty
  = MainframeActionPropertiesProperty
      {haddock_workaround_ = (), dmsTaskArn = Prelude.Nothing}
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
  set newValue MainframeActionPropertiesProperty {..}
    = MainframeActionPropertiesProperty
        {dmsTaskArn = Prelude.pure newValue, ..}