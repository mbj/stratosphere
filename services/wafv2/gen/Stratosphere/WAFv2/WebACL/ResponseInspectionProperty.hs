module Stratosphere.WAFv2.WebACL.ResponseInspectionProperty (
        module Exports, ResponseInspectionProperty(..),
        mkResponseInspectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ResponseInspectionBodyContainsProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ResponseInspectionHeaderProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ResponseInspectionJsonProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ResponseInspectionStatusCodeProperty as Exports
import Stratosphere.ResourceProperties
data ResponseInspectionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspection.html>
    ResponseInspectionProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspection.html#cfn-wafv2-webacl-responseinspection-bodycontains>
                                bodyContains :: (Prelude.Maybe ResponseInspectionBodyContainsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspection.html#cfn-wafv2-webacl-responseinspection-header>
                                header :: (Prelude.Maybe ResponseInspectionHeaderProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspection.html#cfn-wafv2-webacl-responseinspection-json>
                                json :: (Prelude.Maybe ResponseInspectionJsonProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspection.html#cfn-wafv2-webacl-responseinspection-statuscode>
                                statusCode :: (Prelude.Maybe ResponseInspectionStatusCodeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResponseInspectionProperty :: ResponseInspectionProperty
mkResponseInspectionProperty
  = ResponseInspectionProperty
      {haddock_workaround_ = (), bodyContains = Prelude.Nothing,
       header = Prelude.Nothing, json = Prelude.Nothing,
       statusCode = Prelude.Nothing}
instance ToResourceProperties ResponseInspectionProperty where
  toResourceProperties ResponseInspectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ResponseInspection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BodyContains" Prelude.<$> bodyContains,
                            (JSON..=) "Header" Prelude.<$> header,
                            (JSON..=) "Json" Prelude.<$> json,
                            (JSON..=) "StatusCode" Prelude.<$> statusCode])}
instance JSON.ToJSON ResponseInspectionProperty where
  toJSON ResponseInspectionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BodyContains" Prelude.<$> bodyContains,
               (JSON..=) "Header" Prelude.<$> header,
               (JSON..=) "Json" Prelude.<$> json,
               (JSON..=) "StatusCode" Prelude.<$> statusCode]))
instance Property "BodyContains" ResponseInspectionProperty where
  type PropertyType "BodyContains" ResponseInspectionProperty = ResponseInspectionBodyContainsProperty
  set newValue ResponseInspectionProperty {..}
    = ResponseInspectionProperty
        {bodyContains = Prelude.pure newValue, ..}
instance Property "Header" ResponseInspectionProperty where
  type PropertyType "Header" ResponseInspectionProperty = ResponseInspectionHeaderProperty
  set newValue ResponseInspectionProperty {..}
    = ResponseInspectionProperty {header = Prelude.pure newValue, ..}
instance Property "Json" ResponseInspectionProperty where
  type PropertyType "Json" ResponseInspectionProperty = ResponseInspectionJsonProperty
  set newValue ResponseInspectionProperty {..}
    = ResponseInspectionProperty {json = Prelude.pure newValue, ..}
instance Property "StatusCode" ResponseInspectionProperty where
  type PropertyType "StatusCode" ResponseInspectionProperty = ResponseInspectionStatusCodeProperty
  set newValue ResponseInspectionProperty {..}
    = ResponseInspectionProperty
        {statusCode = Prelude.pure newValue, ..}