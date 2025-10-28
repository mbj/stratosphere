module Stratosphere.IVS.PlaybackRestrictionPolicy (
        PlaybackRestrictionPolicy(..), mkPlaybackRestrictionPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PlaybackRestrictionPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-playbackrestrictionpolicy.html>
    PlaybackRestrictionPolicy {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-playbackrestrictionpolicy.html#cfn-ivs-playbackrestrictionpolicy-allowedcountries>
                               allowedCountries :: (ValueList Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-playbackrestrictionpolicy.html#cfn-ivs-playbackrestrictionpolicy-allowedorigins>
                               allowedOrigins :: (ValueList Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-playbackrestrictionpolicy.html#cfn-ivs-playbackrestrictionpolicy-enablestrictoriginenforcement>
                               enableStrictOriginEnforcement :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-playbackrestrictionpolicy.html#cfn-ivs-playbackrestrictionpolicy-name>
                               name :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-playbackrestrictionpolicy.html#cfn-ivs-playbackrestrictionpolicy-tags>
                               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlaybackRestrictionPolicy ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> PlaybackRestrictionPolicy
mkPlaybackRestrictionPolicy allowedCountries allowedOrigins
  = PlaybackRestrictionPolicy
      {haddock_workaround_ = (), allowedCountries = allowedCountries,
       allowedOrigins = allowedOrigins,
       enableStrictOriginEnforcement = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties PlaybackRestrictionPolicy where
  toResourceProperties PlaybackRestrictionPolicy {..}
    = ResourceProperties
        {awsType = "AWS::IVS::PlaybackRestrictionPolicy",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AllowedCountries" JSON..= allowedCountries,
                            "AllowedOrigins" JSON..= allowedOrigins]
                           (Prelude.catMaybes
                              [(JSON..=) "EnableStrictOriginEnforcement"
                                 Prelude.<$> enableStrictOriginEnforcement,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PlaybackRestrictionPolicy where
  toJSON PlaybackRestrictionPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AllowedCountries" JSON..= allowedCountries,
               "AllowedOrigins" JSON..= allowedOrigins]
              (Prelude.catMaybes
                 [(JSON..=) "EnableStrictOriginEnforcement"
                    Prelude.<$> enableStrictOriginEnforcement,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AllowedCountries" PlaybackRestrictionPolicy where
  type PropertyType "AllowedCountries" PlaybackRestrictionPolicy = ValueList Prelude.Text
  set newValue PlaybackRestrictionPolicy {..}
    = PlaybackRestrictionPolicy {allowedCountries = newValue, ..}
instance Property "AllowedOrigins" PlaybackRestrictionPolicy where
  type PropertyType "AllowedOrigins" PlaybackRestrictionPolicy = ValueList Prelude.Text
  set newValue PlaybackRestrictionPolicy {..}
    = PlaybackRestrictionPolicy {allowedOrigins = newValue, ..}
instance Property "EnableStrictOriginEnforcement" PlaybackRestrictionPolicy where
  type PropertyType "EnableStrictOriginEnforcement" PlaybackRestrictionPolicy = Value Prelude.Bool
  set newValue PlaybackRestrictionPolicy {..}
    = PlaybackRestrictionPolicy
        {enableStrictOriginEnforcement = Prelude.pure newValue, ..}
instance Property "Name" PlaybackRestrictionPolicy where
  type PropertyType "Name" PlaybackRestrictionPolicy = Value Prelude.Text
  set newValue PlaybackRestrictionPolicy {..}
    = PlaybackRestrictionPolicy {name = Prelude.pure newValue, ..}
instance Property "Tags" PlaybackRestrictionPolicy where
  type PropertyType "Tags" PlaybackRestrictionPolicy = [Tag]
  set newValue PlaybackRestrictionPolicy {..}
    = PlaybackRestrictionPolicy {tags = Prelude.pure newValue, ..}