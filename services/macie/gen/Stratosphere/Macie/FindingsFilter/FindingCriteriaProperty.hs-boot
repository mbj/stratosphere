module Stratosphere.Macie.FindingsFilter.FindingCriteriaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FindingCriteriaProperty :: Prelude.Type
instance ToResourceProperties FindingCriteriaProperty
instance JSON.ToJSON FindingCriteriaProperty