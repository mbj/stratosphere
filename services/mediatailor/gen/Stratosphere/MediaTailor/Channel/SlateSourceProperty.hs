module Stratosphere.MediaTailor.Channel.SlateSourceProperty (
        SlateSourceProperty(..), mkSlateSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlateSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-channel-slatesource.html>
    SlateSourceProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-channel-slatesource.html#cfn-mediatailor-channel-slatesource-sourcelocationname>
                         sourceLocationName :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-channel-slatesource.html#cfn-mediatailor-channel-slatesource-vodsourcename>
                         vodSourceName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlateSourceProperty :: SlateSourceProperty
mkSlateSourceProperty
  = SlateSourceProperty
      {haddock_workaround_ = (), sourceLocationName = Prelude.Nothing,
       vodSourceName = Prelude.Nothing}
instance ToResourceProperties SlateSourceProperty where
  toResourceProperties SlateSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::Channel.SlateSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceLocationName" Prelude.<$> sourceLocationName,
                            (JSON..=) "VodSourceName" Prelude.<$> vodSourceName])}
instance JSON.ToJSON SlateSourceProperty where
  toJSON SlateSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceLocationName" Prelude.<$> sourceLocationName,
               (JSON..=) "VodSourceName" Prelude.<$> vodSourceName]))
instance Property "SourceLocationName" SlateSourceProperty where
  type PropertyType "SourceLocationName" SlateSourceProperty = Value Prelude.Text
  set newValue SlateSourceProperty {..}
    = SlateSourceProperty
        {sourceLocationName = Prelude.pure newValue, ..}
instance Property "VodSourceName" SlateSourceProperty where
  type PropertyType "VodSourceName" SlateSourceProperty = Value Prelude.Text
  set newValue SlateSourceProperty {..}
    = SlateSourceProperty {vodSourceName = Prelude.pure newValue, ..}