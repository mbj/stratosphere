module Stratosphere.ACMPCA.Certificate.ApiPassthroughProperty (
        module Exports, ApiPassthroughProperty(..),
        mkApiPassthroughProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ACMPCA.Certificate.ExtensionsProperty as Exports
import {-# SOURCE #-} Stratosphere.ACMPCA.Certificate.SubjectProperty as Exports
import Stratosphere.ResourceProperties
data ApiPassthroughProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-apipassthrough.html>
    ApiPassthroughProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-apipassthrough.html#cfn-acmpca-certificate-apipassthrough-extensions>
                            extensions :: (Prelude.Maybe ExtensionsProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-apipassthrough.html#cfn-acmpca-certificate-apipassthrough-subject>
                            subject :: (Prelude.Maybe SubjectProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApiPassthroughProperty :: ApiPassthroughProperty
mkApiPassthroughProperty
  = ApiPassthroughProperty
      {haddock_workaround_ = (), extensions = Prelude.Nothing,
       subject = Prelude.Nothing}
instance ToResourceProperties ApiPassthroughProperty where
  toResourceProperties ApiPassthroughProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Certificate.ApiPassthrough",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Extensions" Prelude.<$> extensions,
                            (JSON..=) "Subject" Prelude.<$> subject])}
instance JSON.ToJSON ApiPassthroughProperty where
  toJSON ApiPassthroughProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Extensions" Prelude.<$> extensions,
               (JSON..=) "Subject" Prelude.<$> subject]))
instance Property "Extensions" ApiPassthroughProperty where
  type PropertyType "Extensions" ApiPassthroughProperty = ExtensionsProperty
  set newValue ApiPassthroughProperty {..}
    = ApiPassthroughProperty {extensions = Prelude.pure newValue, ..}
instance Property "Subject" ApiPassthroughProperty where
  type PropertyType "Subject" ApiPassthroughProperty = SubjectProperty
  set newValue ApiPassthroughProperty {..}
    = ApiPassthroughProperty {subject = Prelude.pure newValue, ..}