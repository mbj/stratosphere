module Stratosphere.CloudFront.Distribution.OriginGroupFailoverCriteriaProperty (
        module Exports, OriginGroupFailoverCriteriaProperty(..),
        mkOriginGroupFailoverCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.StatusCodesProperty as Exports
import Stratosphere.ResourceProperties
data OriginGroupFailoverCriteriaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroupfailovercriteria.html>
    OriginGroupFailoverCriteriaProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroupfailovercriteria.html#cfn-cloudfront-distribution-origingroupfailovercriteria-statuscodes>
                                         statusCodes :: StatusCodesProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginGroupFailoverCriteriaProperty ::
  StatusCodesProperty -> OriginGroupFailoverCriteriaProperty
mkOriginGroupFailoverCriteriaProperty statusCodes
  = OriginGroupFailoverCriteriaProperty
      {haddock_workaround_ = (), statusCodes = statusCodes}
instance ToResourceProperties OriginGroupFailoverCriteriaProperty where
  toResourceProperties OriginGroupFailoverCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.OriginGroupFailoverCriteria",
         supportsTags = Prelude.False,
         properties = ["StatusCodes" JSON..= statusCodes]}
instance JSON.ToJSON OriginGroupFailoverCriteriaProperty where
  toJSON OriginGroupFailoverCriteriaProperty {..}
    = JSON.object ["StatusCodes" JSON..= statusCodes]
instance Property "StatusCodes" OriginGroupFailoverCriteriaProperty where
  type PropertyType "StatusCodes" OriginGroupFailoverCriteriaProperty = StatusCodesProperty
  set newValue OriginGroupFailoverCriteriaProperty {..}
    = OriginGroupFailoverCriteriaProperty {statusCodes = newValue, ..}