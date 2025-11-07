module Stratosphere.CustomerProfiles.EventTrigger.PeriodProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PeriodProperty :: Prelude.Type
instance ToResourceProperties PeriodProperty
instance Prelude.Eq PeriodProperty
instance Prelude.Show PeriodProperty
instance JSON.ToJSON PeriodProperty