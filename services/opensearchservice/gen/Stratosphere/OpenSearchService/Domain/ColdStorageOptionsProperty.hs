module Stratosphere.OpenSearchService.Domain.ColdStorageOptionsProperty (
        ColdStorageOptionsProperty(..), mkColdStorageOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColdStorageOptionsProperty
  = ColdStorageOptionsProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColdStorageOptionsProperty :: ColdStorageOptionsProperty
mkColdStorageOptionsProperty
  = ColdStorageOptionsProperty {enabled = Prelude.Nothing}
instance ToResourceProperties ColdStorageOptionsProperty where
  toResourceProperties ColdStorageOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.ColdStorageOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON ColdStorageOptionsProperty where
  toJSON ColdStorageOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" ColdStorageOptionsProperty where
  type PropertyType "Enabled" ColdStorageOptionsProperty = Value Prelude.Bool
  set newValue ColdStorageOptionsProperty {}
    = ColdStorageOptionsProperty {enabled = Prelude.pure newValue, ..}