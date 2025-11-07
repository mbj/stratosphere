module Stratosphere.QuickSight.Analysis.DataColorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataColorProperty :: Prelude.Type
instance ToResourceProperties DataColorProperty
instance Prelude.Eq DataColorProperty
instance Prelude.Show DataColorProperty
instance JSON.ToJSON DataColorProperty