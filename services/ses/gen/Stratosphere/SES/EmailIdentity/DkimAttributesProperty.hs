module Stratosphere.SES.EmailIdentity.DkimAttributesProperty (
        DkimAttributesProperty(..), mkDkimAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DkimAttributesProperty
  = DkimAttributesProperty {signingEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkDkimAttributesProperty :: DkimAttributesProperty
mkDkimAttributesProperty
  = DkimAttributesProperty {signingEnabled = Prelude.Nothing}
instance ToResourceProperties DkimAttributesProperty where
  toResourceProperties DkimAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::EmailIdentity.DkimAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SigningEnabled" Prelude.<$> signingEnabled])}
instance JSON.ToJSON DkimAttributesProperty where
  toJSON DkimAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SigningEnabled" Prelude.<$> signingEnabled]))
instance Property "SigningEnabled" DkimAttributesProperty where
  type PropertyType "SigningEnabled" DkimAttributesProperty = Value Prelude.Bool
  set newValue DkimAttributesProperty {}
    = DkimAttributesProperty
        {signingEnabled = Prelude.pure newValue, ..}