module Stratosphere.Pinpoint.Segment.RecencyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RecencyProperty :: Prelude.Type
instance ToResourceProperties RecencyProperty
instance JSON.ToJSON RecencyProperty