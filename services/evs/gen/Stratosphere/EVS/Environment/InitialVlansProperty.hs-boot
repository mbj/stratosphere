module Stratosphere.EVS.Environment.InitialVlansProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InitialVlansProperty :: Prelude.Type
instance ToResourceProperties InitialVlansProperty
instance Prelude.Eq InitialVlansProperty
instance Prelude.Show InitialVlansProperty
instance JSON.ToJSON InitialVlansProperty