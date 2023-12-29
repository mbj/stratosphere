module Stratosphere.S3.Bucket.NoncurrentVersionExpirationProperty (
        NoncurrentVersionExpirationProperty(..),
        mkNoncurrentVersionExpirationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NoncurrentVersionExpirationProperty
  = NoncurrentVersionExpirationProperty {newerNoncurrentVersions :: (Prelude.Maybe (Value Prelude.Integer)),
                                         noncurrentDays :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNoncurrentVersionExpirationProperty ::
  Value Prelude.Integer -> NoncurrentVersionExpirationProperty
mkNoncurrentVersionExpirationProperty noncurrentDays
  = NoncurrentVersionExpirationProperty
      {noncurrentDays = noncurrentDays,
       newerNoncurrentVersions = Prelude.Nothing}
instance ToResourceProperties NoncurrentVersionExpirationProperty where
  toResourceProperties NoncurrentVersionExpirationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.NoncurrentVersionExpiration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NoncurrentDays" JSON..= noncurrentDays]
                           (Prelude.catMaybes
                              [(JSON..=) "NewerNoncurrentVersions"
                                 Prelude.<$> newerNoncurrentVersions]))}
instance JSON.ToJSON NoncurrentVersionExpirationProperty where
  toJSON NoncurrentVersionExpirationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NoncurrentDays" JSON..= noncurrentDays]
              (Prelude.catMaybes
                 [(JSON..=) "NewerNoncurrentVersions"
                    Prelude.<$> newerNoncurrentVersions])))
instance Property "NewerNoncurrentVersions" NoncurrentVersionExpirationProperty where
  type PropertyType "NewerNoncurrentVersions" NoncurrentVersionExpirationProperty = Value Prelude.Integer
  set newValue NoncurrentVersionExpirationProperty {..}
    = NoncurrentVersionExpirationProperty
        {newerNoncurrentVersions = Prelude.pure newValue, ..}
instance Property "NoncurrentDays" NoncurrentVersionExpirationProperty where
  type PropertyType "NoncurrentDays" NoncurrentVersionExpirationProperty = Value Prelude.Integer
  set newValue NoncurrentVersionExpirationProperty {..}
    = NoncurrentVersionExpirationProperty
        {noncurrentDays = newValue, ..}