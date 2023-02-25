module Stratosphere.Lambda.Function.FileSystemConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FileSystemConfigProperty :: Prelude.Type
instance ToResourceProperties FileSystemConfigProperty
instance JSON.ToJSON FileSystemConfigProperty