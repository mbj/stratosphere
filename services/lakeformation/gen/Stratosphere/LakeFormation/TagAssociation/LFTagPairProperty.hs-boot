module Stratosphere.LakeFormation.TagAssociation.LFTagPairProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LFTagPairProperty :: Prelude.Type
instance ToResourceProperties LFTagPairProperty
instance JSON.ToJSON LFTagPairProperty