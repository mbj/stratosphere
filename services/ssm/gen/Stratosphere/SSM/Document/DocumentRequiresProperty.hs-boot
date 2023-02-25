module Stratosphere.SSM.Document.DocumentRequiresProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DocumentRequiresProperty :: Prelude.Type
instance ToResourceProperties DocumentRequiresProperty
instance JSON.ToJSON DocumentRequiresProperty