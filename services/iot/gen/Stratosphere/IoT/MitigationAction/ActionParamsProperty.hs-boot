module Stratosphere.IoT.MitigationAction.ActionParamsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ActionParamsProperty :: Prelude.Type
instance ToResourceProperties ActionParamsProperty
instance JSON.ToJSON ActionParamsProperty