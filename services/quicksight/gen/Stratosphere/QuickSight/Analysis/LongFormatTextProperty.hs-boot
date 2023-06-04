module Stratosphere.QuickSight.Analysis.LongFormatTextProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LongFormatTextProperty :: Prelude.Type
instance ToResourceProperties LongFormatTextProperty
instance JSON.ToJSON LongFormatTextProperty