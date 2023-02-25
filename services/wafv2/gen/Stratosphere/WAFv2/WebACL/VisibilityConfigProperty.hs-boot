module Stratosphere.WAFv2.WebACL.VisibilityConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VisibilityConfigProperty :: Prelude.Type
instance ToResourceProperties VisibilityConfigProperty
instance JSON.ToJSON VisibilityConfigProperty