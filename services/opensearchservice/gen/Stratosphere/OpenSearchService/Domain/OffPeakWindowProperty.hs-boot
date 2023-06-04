module Stratosphere.OpenSearchService.Domain.OffPeakWindowProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OffPeakWindowProperty :: Prelude.Type
instance ToResourceProperties OffPeakWindowProperty
instance JSON.ToJSON OffPeakWindowProperty