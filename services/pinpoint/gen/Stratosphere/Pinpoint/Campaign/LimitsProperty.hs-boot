module Stratosphere.Pinpoint.Campaign.LimitsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LimitsProperty :: Prelude.Type
instance ToResourceProperties LimitsProperty
instance JSON.ToJSON LimitsProperty