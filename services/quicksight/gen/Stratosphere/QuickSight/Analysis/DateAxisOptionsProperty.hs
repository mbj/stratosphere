module Stratosphere.QuickSight.Analysis.DateAxisOptionsProperty (
        DateAxisOptionsProperty(..), mkDateAxisOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateAxisOptionsProperty
  = DateAxisOptionsProperty {missingDateVisibility :: (Prelude.Maybe (Value Prelude.Text))}
mkDateAxisOptionsProperty :: DateAxisOptionsProperty
mkDateAxisOptionsProperty
  = DateAxisOptionsProperty {missingDateVisibility = Prelude.Nothing}
instance ToResourceProperties DateAxisOptionsProperty where
  toResourceProperties DateAxisOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DateAxisOptions",
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
  type PropertyType "MissingDateVisibility" DateAxisOptionsProperty = Value Prelude.Text
  set newValue DateAxisOptionsProperty {}
    = DateAxisOptionsProperty
        {missingDateVisibility = Prelude.pure newValue, ..}