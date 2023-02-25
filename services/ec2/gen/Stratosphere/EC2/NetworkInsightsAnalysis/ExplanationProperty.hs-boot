module Stratosphere.EC2.NetworkInsightsAnalysis.ExplanationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ExplanationProperty :: Prelude.Type
instance ToResourceProperties ExplanationProperty
instance JSON.ToJSON ExplanationProperty