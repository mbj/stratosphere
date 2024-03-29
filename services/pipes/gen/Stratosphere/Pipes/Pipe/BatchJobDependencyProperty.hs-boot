module Stratosphere.Pipes.Pipe.BatchJobDependencyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BatchJobDependencyProperty :: Prelude.Type
instance ToResourceProperties BatchJobDependencyProperty
instance Prelude.Eq BatchJobDependencyProperty
instance Prelude.Show BatchJobDependencyProperty
instance JSON.ToJSON BatchJobDependencyProperty