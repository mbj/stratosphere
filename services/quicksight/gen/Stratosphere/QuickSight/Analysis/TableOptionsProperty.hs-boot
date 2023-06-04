module Stratosphere.QuickSight.Analysis.TableOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TableOptionsProperty :: Prelude.Type
instance ToResourceProperties TableOptionsProperty
instance JSON.ToJSON TableOptionsProperty