module Stratosphere.Pinpoint.Segment.BehaviorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BehaviorProperty :: Prelude.Type
instance ToResourceProperties BehaviorProperty
instance JSON.ToJSON BehaviorProperty