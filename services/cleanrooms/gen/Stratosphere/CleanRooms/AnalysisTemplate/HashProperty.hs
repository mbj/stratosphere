module Stratosphere.CleanRooms.AnalysisTemplate.HashProperty (
        HashProperty(..), mkHashProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HashProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-hash.html>
    HashProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-hash.html#cfn-cleanrooms-analysistemplate-hash-sha256>
                  sha256 :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHashProperty :: HashProperty
mkHashProperty
  = HashProperty {haddock_workaround_ = (), sha256 = Prelude.Nothing}
instance ToResourceProperties HashProperty where
  toResourceProperties HashProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::AnalysisTemplate.Hash",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Sha256" Prelude.<$> sha256])}
instance JSON.ToJSON HashProperty where
  toJSON HashProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Sha256" Prelude.<$> sha256]))
instance Property "Sha256" HashProperty where
  type PropertyType "Sha256" HashProperty = Value Prelude.Text
  set newValue HashProperty {..}
    = HashProperty {sha256 = Prelude.pure newValue, ..}