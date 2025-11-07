module Stratosphere.Wisdom.QuickResponse.QuickResponseContentsProperty (
        module Exports, QuickResponseContentsProperty(..),
        mkQuickResponseContentsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.QuickResponse.QuickResponseContentProviderProperty as Exports
import Stratosphere.ResourceProperties
data QuickResponseContentsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-quickresponse-quickresponsecontents.html>
    QuickResponseContentsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-quickresponse-quickresponsecontents.html#cfn-wisdom-quickresponse-quickresponsecontents-markdown>
                                   markdown :: (Prelude.Maybe QuickResponseContentProviderProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-quickresponse-quickresponsecontents.html#cfn-wisdom-quickresponse-quickresponsecontents-plaintext>
                                   plainText :: (Prelude.Maybe QuickResponseContentProviderProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQuickResponseContentsProperty :: QuickResponseContentsProperty
mkQuickResponseContentsProperty
  = QuickResponseContentsProperty
      {haddock_workaround_ = (), markdown = Prelude.Nothing,
       plainText = Prelude.Nothing}
instance ToResourceProperties QuickResponseContentsProperty where
  toResourceProperties QuickResponseContentsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::QuickResponse.QuickResponseContents",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Markdown" Prelude.<$> markdown,
                            (JSON..=) "PlainText" Prelude.<$> plainText])}
instance JSON.ToJSON QuickResponseContentsProperty where
  toJSON QuickResponseContentsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Markdown" Prelude.<$> markdown,
               (JSON..=) "PlainText" Prelude.<$> plainText]))
instance Property "Markdown" QuickResponseContentsProperty where
  type PropertyType "Markdown" QuickResponseContentsProperty = QuickResponseContentProviderProperty
  set newValue QuickResponseContentsProperty {..}
    = QuickResponseContentsProperty
        {markdown = Prelude.pure newValue, ..}
instance Property "PlainText" QuickResponseContentsProperty where
  type PropertyType "PlainText" QuickResponseContentsProperty = QuickResponseContentProviderProperty
  set newValue QuickResponseContentsProperty {..}
    = QuickResponseContentsProperty
        {plainText = Prelude.pure newValue, ..}