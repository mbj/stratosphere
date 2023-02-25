module Stratosphere.Personalize.Solution.SolutionConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SolutionConfigProperty :: Prelude.Type
instance ToResourceProperties SolutionConfigProperty
instance JSON.ToJSON SolutionConfigProperty