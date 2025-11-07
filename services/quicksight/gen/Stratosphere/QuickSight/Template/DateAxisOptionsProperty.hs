module Stratosphere.QuickSight.Template.DateAxisOptionsProperty (
        DateAxisOptionsProperty(..), mkDateAxisOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data DateAxisOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-dateaxisoptions.html>
    DateAxisOptionsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-dateaxisoptions.html#cfn-quicksight-template-dateaxisoptions-missingdatevisibility>
                             missingDateVisibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateAxisOptionsProperty :: DateAxisOptionsProperty
mkDateAxisOptionsProperty
  = DateAxisOptionsProperty
      {haddock_workaround_ = (), missingDateVisibility = Prelude.Nothing}
instance ToResourceProperties DateAxisOptionsProperty where
  toResourceProperties DateAxisOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DateAxisOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MissingDateVisibility"
                              Prelude.<$> missingDateVisibility])}
instance JSON.ToJSON DateAxisOptionsProperty where
  toJSON DateAxisOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MissingDateVisibility"
                 Prelude.<$> missingDateVisibility]))
instance Property "MissingDateVisibility" DateAxisOptionsProperty where
  type PropertyType "MissingDateVisibility" DateAxisOptionsProperty = JSON.Object
  set newValue DateAxisOptionsProperty {..}
    = DateAxisOptionsProperty
        {missingDateVisibility = Prelude.pure newValue, ..}