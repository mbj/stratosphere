module Stratosphere.B2BI.Partnership.WrapOptionsProperty (
        WrapOptionsProperty(..), mkWrapOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WrapOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-wrapoptions.html>
    WrapOptionsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-wrapoptions.html#cfn-b2bi-partnership-wrapoptions-linelength>
                         lineLength :: (Prelude.Maybe (Value Prelude.Double)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-wrapoptions.html#cfn-b2bi-partnership-wrapoptions-lineterminator>
                         lineTerminator :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-wrapoptions.html#cfn-b2bi-partnership-wrapoptions-wrapby>
                         wrapBy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWrapOptionsProperty :: WrapOptionsProperty
mkWrapOptionsProperty
  = WrapOptionsProperty
      {haddock_workaround_ = (), lineLength = Prelude.Nothing,
       lineTerminator = Prelude.Nothing, wrapBy = Prelude.Nothing}
instance ToResourceProperties WrapOptionsProperty where
  toResourceProperties WrapOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Partnership.WrapOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LineLength" Prelude.<$> lineLength,
                            (JSON..=) "LineTerminator" Prelude.<$> lineTerminator,
                            (JSON..=) "WrapBy" Prelude.<$> wrapBy])}
instance JSON.ToJSON WrapOptionsProperty where
  toJSON WrapOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LineLength" Prelude.<$> lineLength,
               (JSON..=) "LineTerminator" Prelude.<$> lineTerminator,
               (JSON..=) "WrapBy" Prelude.<$> wrapBy]))
instance Property "LineLength" WrapOptionsProperty where
  type PropertyType "LineLength" WrapOptionsProperty = Value Prelude.Double
  set newValue WrapOptionsProperty {..}
    = WrapOptionsProperty {lineLength = Prelude.pure newValue, ..}
instance Property "LineTerminator" WrapOptionsProperty where
  type PropertyType "LineTerminator" WrapOptionsProperty = Value Prelude.Text
  set newValue WrapOptionsProperty {..}
    = WrapOptionsProperty {lineTerminator = Prelude.pure newValue, ..}
instance Property "WrapBy" WrapOptionsProperty where
  type PropertyType "WrapBy" WrapOptionsProperty = Value Prelude.Text
  set newValue WrapOptionsProperty {..}
    = WrapOptionsProperty {wrapBy = Prelude.pure newValue, ..}