module Stratosphere.SageMaker.ModelCard.IntendedUsesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IntendedUsesProperty :: Prelude.Type
instance ToResourceProperties IntendedUsesProperty
instance JSON.ToJSON IntendedUsesProperty