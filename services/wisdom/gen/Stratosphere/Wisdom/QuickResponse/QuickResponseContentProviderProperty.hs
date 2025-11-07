module Stratosphere.Wisdom.QuickResponse.QuickResponseContentProviderProperty (
        QuickResponseContentProviderProperty(..),
        mkQuickResponseContentProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QuickResponseContentProviderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-quickresponse-quickresponsecontentprovider.html>
    QuickResponseContentProviderProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-quickresponse-quickresponsecontentprovider.html#cfn-wisdom-quickresponse-quickresponsecontentprovider-content>
                                          content :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQuickResponseContentProviderProperty ::
  QuickResponseContentProviderProperty
mkQuickResponseContentProviderProperty
  = QuickResponseContentProviderProperty
      {haddock_workaround_ = (), content = Prelude.Nothing}
instance ToResourceProperties QuickResponseContentProviderProperty where
  toResourceProperties QuickResponseContentProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::QuickResponse.QuickResponseContentProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Content" Prelude.<$> content])}
instance JSON.ToJSON QuickResponseContentProviderProperty where
  toJSON QuickResponseContentProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Content" Prelude.<$> content]))
instance Property "Content" QuickResponseContentProviderProperty where
  type PropertyType "Content" QuickResponseContentProviderProperty = Value Prelude.Text
  set newValue QuickResponseContentProviderProperty {..}
    = QuickResponseContentProviderProperty
        {content = Prelude.pure newValue, ..}